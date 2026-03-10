// --- 1. Tentukan Posisi Dasar ---
var box_x = display_get_gui_width() - 599 - 1; 
var box_y = display_get_gui_height() - 214 - 35; 

// Tambahkan variabel penggeser otomatis (Slot Index)
var _slot_count = 0;
var _spacing = 100; // Jarak antar slot

// --- 2. Gambar Kotak Background ---
draw_sprite(spr_inventory, 0, box_x, box_y);

// --- 3. LOGIKA BARU: Wortel + Seed (Dynamic Slotting) ---

// --- BAGIAN WORTEL ---
if (global.carrot > 0) {
    var carrot_x = box_x + 90 + (_slot_count * _spacing); 
    var carrot_y = box_y + 160; 

    draw_sprite(spr_carrot, 0, carrot_x, carrot_y);
    
    // Badge Angka Wortel
    var badge_x = carrot_x + 55;
    var badge_y = carrot_y + 70;
    draw_set_color(c_orange); 
    draw_circle(badge_x, badge_y, 14, false);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(badge_x, badge_y, string(global.carrot));
    
    _slot_count += 1; // Geser slot untuk item berikutnya
}

// --- BAGIAN BIBIT WORTEL (SEED) ---
if (global.carrotseed > 0) {
    // Jika wortel tidak ada, bibit otomatis di Slot 1 karena _slot_count masih 0
    var seed_x = box_x + 90 + (_slot_count * _spacing); 
    var seed_y = box_y + 160; 

    draw_sprite(spr_carrot_seed, 0, seed_x, seed_y);
    
    // Badge Angka Bibit (Sama seperti wortel)
    var badge_x = seed_x + 55;
    var badge_y = seed_y + 70;
    
    draw_set_color(c_orange); 
    draw_circle(badge_x, badge_y, 14, false);
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(badge_x, badge_y, string(global.carrotseed));
    
    _slot_count += 1; // Geser slot lagi
}

// Reset Settingan Teks agar tidak merusak loop ds_list
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

// --- 4. LOGIKA ITEM LAIN (ds_list) ---
for(var i = 0; i < ds_list_size(items); i++){
    var _item_x = box_x + 90 + (_slot_count * _spacing);
    var _item_y = box_y + 160;
    
    var _spr = object_get_sprite(ds_list_find_value(items, i));
    
    draw_sprite(_spr, 0, _item_x, _item_y);
    _slot_count += 1; // Gunakan _slot_count alih-alih _x_offset manual
}