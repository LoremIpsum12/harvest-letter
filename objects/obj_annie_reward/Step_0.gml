/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 2F892025
/// @DnDArgument : "key" "vk_enter"
var l2F892025_0;l2F892025_0 = keyboard_check_pressed(vk_enter);if (l2F892025_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DEC672F
	/// @DnDParent : 2F892025
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "obj_budi.typedWord"
	obj_budi.typedWord = "";

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1A82F2A0
	/// @DnDParent : 2F892025
	/// @DnDArgument : "expr" "string_pos("collect", string_lower(keyboard_string)) > 0"
	if(string_pos("collect", string_lower(keyboard_string)) > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40A749DB
		/// @DnDInput : 4
		/// @DnDParent : 1A82F2A0
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "expr_2" "room_speed * 5"
		/// @DnDArgument : "expr_3" "5"
		/// @DnDArgument : "expr_relative_3" "1"
		/// @DnDArgument : "var" "obj_icon_todolist.visible"
		/// @DnDArgument : "var_1" "obj_game.show_tutorial"
		/// @DnDArgument : "var_2" "obj_game.alarm[0]"
		/// @DnDArgument : "var_3" "global.carrotseed"
		obj_icon_todolist.visible = true;
		obj_game.show_tutorial = true;
		obj_game.alarm[0] = room_speed * 5;
		global.carrotseed += 5;
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 4FBAAFA3
		/// @DnDParent : 1A82F2A0
		/// @DnDArgument : "code" "if (instance_exists(obj_inventory)) {$(13_10)    // Memanggil fungsi yang sudah dibuat di Create Event obj_inventory$(13_10)    obj_inventory.inventory_add(spr_carrot_seed, 0); $(13_10)}$(13_10)$(13_10)if (instance_exists(obj_quest_manager)) {$(13_10)    obj_quest_manager.complete_quest("collect_carrot");$(13_10)}"
		if (instance_exists(obj_inventory)) {
		    // Memanggil fungsi yang sudah dibuat di Create Event obj_inventory
		    obj_inventory.inventory_add(spr_carrot_seed, 0); 
		}
		
		if (instance_exists(obj_quest_manager)) {
		    obj_quest_manager.complete_quest("collect_carrot");
		}
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 230FB941
		/// @DnDApplyTo : {obj_annie_reward}
		/// @DnDParent : 1A82F2A0
		with(obj_annie_reward) instance_destroy();}}