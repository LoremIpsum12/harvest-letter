if(obj_budi.typedWord == word && instance_place(x, y, obj_budi)){
    // --- CEK KEBUTUHAN AIR ---
    if(stage == 1 && !inventory_has(obj_water_bucket)){
        show_message("You need water");
        return;
    }
    
    // --- LOGIKA PENYIRAMAN (Stage 1) ---
    if(stage == 1) {
        with(obj_inventory) {
            var _index = ds_list_find_index(items, obj_water_bucket);
            if (_index != -1) {
                ds_list_delete(items, _index); // Hanya menghapus ember, bukan bibit
            }
        }
    }
    
    // Reset kata yang diketik
    obj_budi.typedWord = "";
    
    // Tampilkan popup jika bukan stage terakhir
    if(stage != 2){
        instance_create_layer(room_width / 2, room_height/ 2, "UI", obj_popup);
    }
    
    // Transisi Stage
    stage += 1;
    
    if(stage == 1){
        word = "water";
    } else if (stage == 2){
        word = "collect";
        is_watered = true; // Tandai sudah disiram
    }
}