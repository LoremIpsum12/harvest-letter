items = ds_list_create();

// Tambahkan fungsi ini agar bisa dipanggil oleh obj_annie_reward
inventory_add = function(_sprite, _amount) {
    // Karena kamu ingin bibit wortel muncul di slot 1 dengan angka,
    // kita cukup mengupdate variabel globalnya saja.
    if (_sprite == spr_carrot_seed) {
        global.carrotseed += _amount;
    } else {
        // Jika yang ditambah bukan bibit (misal ember), baru masukkan ke ds_list
        ds_list_add(items, _sprite);
    }
}