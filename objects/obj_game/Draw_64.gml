/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E672284
/// @DnDArgument : "var" "show_todolist"
/// @DnDArgument : "value" "true"
if(show_todolist == true){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5B54E274
	/// @DnDParent : 1E672284
	/// @DnDArgument : "x" "650"
	/// @DnDArgument : "y" "150"
	/// @DnDArgument : "sprite" "spr_todolist"
	/// @DnDSaveInfo : "sprite" "spr_todolist"
	draw_sprite(spr_todolist, 0, 650, 150);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 6BF7DFEC
	/// @DnDParent : 1E672284
	/// @DnDArgument : "font" "fnt_main"
	/// @DnDSaveInfo : "font" "fnt_main"
	draw_set_font(fnt_main);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 0F6FD411
	/// @DnDParent : 1E672284
	/// @DnDArgument : "alpha" "0.2"
	draw_set_alpha(0.2);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 61C361BD
	/// @DnDParent : 1E672284
	draw_set_alpha(1);

<<<<<<< HEAD
=======
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 270AD924
	/// @DnDParent : 1E672284
	/// @DnDArgument : "var" "fields "
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "layer_get_all_elements"
	/// @DnDArgument : "arg" ""Fields""
	var fields  = layer_get_all_elements("Fields");

>>>>>>> jvn/main
	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 3BBBE753
	/// @DnDParent : 1E672284
<<<<<<< HEAD
	/// @DnDArgument : "cond" "i < array_length(assigned_tasks)"
	for(i = 0; i < array_length(assigned_tasks); i += 1) {	/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 69F33516
		/// @DnDParent : 3BBBE753
		/// @DnDArgument : "var" "is_completed"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "array_contains"
		/// @DnDArgument : "arg" "completed_tasks, i"
		var is_completed = array_contains(completed_tasks, i);
=======
	/// @DnDArgument : "cond" "i < array_length(fields)"
	for(i = 0; i < array_length(fields); i += 1) {	/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 22A01C0A
		/// @DnDParent : 3BBBE753
		/// @DnDArgument : "var" "field"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "layer_instance_get_instance"
		/// @DnDArgument : "arg" "fields[i]"
		var field = layer_instance_get_instance(fields[i]);
>>>>>>> jvn/main
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0246DDAE
		/// @DnDParent : 3BBBE753
<<<<<<< HEAD
		/// @DnDArgument : "var" "is_completed"
		/// @DnDArgument : "value" "true"
		if(is_completed == true){	/// @DnDAction : YoYo Games.Drawing.Set_Color
=======
		/// @DnDArgument : "var" "field.completed"
		/// @DnDArgument : "value" "true"
		if(field.completed == true){	/// @DnDAction : YoYo Games.Drawing.Set_Color
>>>>>>> jvn/main
			/// @DnDVersion : 1
			/// @DnDHash : 0CE5B609
			/// @DnDParent : 0246DDAE
			/// @DnDArgument : "color" "$FF00FF1D"
			draw_set_colour($FF00FF1D & $ffffff);
			var l0CE5B609_0=($FF00FF1D >> 24);
			draw_set_alpha(l0CE5B609_0 / $ff);}
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 31C7056A
		/// @DnDParent : 3BBBE753
		/// @DnDArgument : "x" "820"
		/// @DnDArgument : "y" "300 + (i * 60)"
		/// @DnDArgument : "caption" """"
<<<<<<< HEAD
		/// @DnDArgument : "var" "assigned_tasks[i] "
		draw_text(820, 300 + (i * 60), string("") + string(assigned_tasks[i] ));
=======
		/// @DnDArgument : "var" "field.task"
		draw_text(820, 300 + (i * 60), string("") + string(field.task));
>>>>>>> jvn/main
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5973FEBA
		/// @DnDParent : 3BBBE753
		/// @DnDArgument : "color" "$FF123960"
		draw_set_colour($FF123960 & $ffffff);
		var l5973FEBA_0=($FF123960 >> 24);
		draw_set_alpha(l5973FEBA_0 / $ff);}}