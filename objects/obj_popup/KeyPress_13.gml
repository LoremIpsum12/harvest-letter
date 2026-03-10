var _field = instance_place(obj_budi.x, obj_budi.y, obj_growth);

// Mencegah error jika Budi tidak sedang berdiri di atas tanah
if (_field != noone) {
    if (_field.is_watered) {
        _field.completed = true;
    }
}

if(string_trim(obj_budi.typedWord) == tugas_list[index_sekarang]){
    index_sekarang += 1;
    show_debug_message(string("debug message"));
    
    // Simpan kata yang baru diketik sebelum dikosongkan
    var _kata_terketik = obj_budi.typedWord;
    obj_budi.typedWord = "";
    
    if(index_sekarang >= array_length(tugas_list)){
        global.popup_open = false;
        obj_budi.spd = 1;           
        global.carrotseed -= 1;
        
        var _plant_the_seeds_exists = instance_exists(obj_planttheseeds);
        var _water_the_crops_exists = instance_exists(obj_wateryourcrops);
        
        // --- MISI: PLANT SEEDS ---
        if(_plant_the_seeds_exists){
            obj_planttheseeds.image_index = 1;
            obj_planttheseeds.alarm[0] = room_speed * 3;
            
            // Lapor centang hijau ke Quest Manager
            if (instance_exists(obj_quest_manager)) {
                obj_quest_manager.complete_quest("plant_seeds");
            }
        } 
        // --- MISI: WATER CROPS ---
        else if(_water_the_crops_exists) {
            obj_wateryourcrops.image_index = 1;
            obj_wateryourcrops.alarm[0] = room_speed * 3;
            
            // Lapor centang hijau ke Quest Manager
            if (instance_exists(obj_quest_manager)) {
                obj_quest_manager.complete_quest("water_crops");
            }
        }
        
        show_popup_grow = true;
        obj_cycle_time.alarm[0] = room_speed * 0.2;
        instance_destroy();
    }

    // --- LOGIKA EMBER AIR KAMU ---
    // Menggunakan _kata_terketik agar tidak error
    if (_kata_terketik == "water plants") {
        if (global.tutorial_index == 1) {

            var has_water = false;
            with (obj_inventory) {
                has_water = inventory_has(obj_water_bucket);
            }

            if (has_water) {
                // Complete task
                global.tutorialtasks[1].completed = true;
                global.tutorial_index = 2;

                // Optional: remove water bucket
                with (obj_inventory) {
                    var _idx = ds_list_find_index(items, obj_water_bucket);
                    if (_idx != -1) {
                        ds_list_delete(items, _idx);
                        show_debug_message("deleted water bucket");
                    }
                }
            } else {
                // Feedback
                show_message("You need water first!");
            }
        }
    }
}