if (player_near) {
    if (obj_budi.typedWord == "collectwater") {
        
        // 1. Cek apakah pemain sudah punya bucket atau belum (Opsional tapi disarankan)
        // Jika sistem kamu memperbolehkan ambil berkali-kali, abaikan pengecekan ini
        if (!inventory_has(obj_water_bucket)) {
            
            // 2. Tambahkan Bucket ke Inventory
            with (obj_inventory) {
                inventory_add(obj_water_bucket);
                show_debug_message("Water bucket added");
            }

            // 3. TRIGGER CENTANG DI QUEST MANAGER
            // Kita panggil ID "collect_water" sesuai dengan Switch Case di Create Event manager
            if (instance_exists(obj_quest_manager)) {
                obj_quest_manager.complete_quest("collect_water");
            }

            // 4. Logika Tutorial (Jika diperlukan)
            // Catatan: Jika ini misi ke-4, pastikan index tutorial sesuai
            global.tutorial_index = 4; 
            show_collectwater = false;
            if (instance_exists(obj_wateryourcrops)) {
                obj_wateryourcrops.showing = true;
            }
            
            show_debug_message("Quest Collect Water Berhasil!");
        } else {
            show_message("You already have water!");
        }
        
        // Kosongkan ketikan setelah menekan Enter dan kata benar
        obj_budi.typedWord = "";
    }
}

// Opsional: Kosongkan ketikan setiap tekan enter meskipun kata salah
// obj_budi.typedWord = "";