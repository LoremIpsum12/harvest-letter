// --- DRAW GUI EVENT ---

// 1. Ambil Ukuran Layar & Titik Tengah
var screen_w = display_get_gui_width();
var screen_h = display_get_gui_height();
var center_x = screen_w / 2;
var center_y = screen_h / 2;

// 2. Gambar Suratnya (Background)
draw_sprite(spr_nomail, 0, center_x, center_y);

// -----------------------------------------------------------

// 4. Reset Alignment (Wajib!)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);