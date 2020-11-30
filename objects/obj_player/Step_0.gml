/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0C028A7D
/// @DnDArgument : "key" "vk_right"
var l0C028A7D_0;
l0C028A7D_0 = keyboard_check(vk_right);
if (l0C028A7D_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 315D2F98
	/// @DnDParent : 0C028A7D
	/// @DnDArgument : "expr" "walksp"
	/// @DnDArgument : "var" "hsp"
	hsp = walksp;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0AD0FDCA
else
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 44D6D930
	/// @DnDParent : 0AD0FDCA
	/// @DnDArgument : "key" "vk_left"
	var l44D6D930_0;
	l44D6D930_0 = keyboard_check(vk_left);
	if (l44D6D930_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E309701
		/// @DnDParent : 44D6D930
		/// @DnDArgument : "expr" "-walksp"
		/// @DnDArgument : "var" "hsp"
		hsp = -walksp;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2BF59F46
/// @DnDArgument : "key" "vk_up"
var l2BF59F46_0;
l2BF59F46_0 = keyboard_check(vk_up);
if (l2BF59F46_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D3C0630
	/// @DnDParent : 2BF59F46
	/// @DnDArgument : "expr" "-walksp"
	/// @DnDArgument : "var" "vsp"
	vsp = -walksp;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4999305C
else
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 7095AD3A
	/// @DnDParent : 4999305C
	/// @DnDArgument : "key" "vk_down"
	var l7095AD3A_0;
	l7095AD3A_0 = keyboard_check(vk_down);
	if (l7095AD3A_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3CE00ED3
		/// @DnDParent : 7095AD3A
		/// @DnDArgument : "expr" "walksp"
		/// @DnDArgument : "var" "vsp"
		vsp = walksp;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7298C5D2
/// @DnDArgument : "key" "vk_left"
/// @DnDArgument : "not" "1"
var l7298C5D2_0;
l7298C5D2_0 = keyboard_check(vk_left);
if (!l7298C5D2_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 778AB8F7
	/// @DnDParent : 7298C5D2
	/// @DnDArgument : "key" "vk_right"
	/// @DnDArgument : "not" "1"
	var l778AB8F7_0;
	l778AB8F7_0 = keyboard_check(vk_right);
	if (!l778AB8F7_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2697E721
		/// @DnDParent : 778AB8F7
		/// @DnDArgument : "var" "hsp"
		hsp = 0;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 39F546AA
/// @DnDArgument : "key" "vk_up"
/// @DnDArgument : "not" "1"
var l39F546AA_0;
l39F546AA_0 = keyboard_check(vk_up);
if (!l39F546AA_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 453F6F32
	/// @DnDParent : 39F546AA
	/// @DnDArgument : "key" "vk_down"
	/// @DnDArgument : "not" "1"
	var l453F6F32_0;
	l453F6F32_0 = keyboard_check(vk_down);
	if (!l453F6F32_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B5D5617
		/// @DnDParent : 453F6F32
		/// @DnDArgument : "var" "vsp"
		vsp = 0;
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4EC128F6
/// @DnDArgument : "x" "hsp"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "obj_wall"
var l4EC128F6_0 = instance_place(x + hsp, y + 0, obj_wall);
if ((l4EC128F6_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DF15342
	/// @DnDParent : 4EC128F6
	/// @DnDArgument : "var" "hsp"
	hsp = 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4147C0BB
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "vsp"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "obj_wall"
var l4147C0BB_0 = instance_place(x + 0, y + vsp, obj_wall);
if ((l4147C0BB_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C0898B0
	/// @DnDParent : 4147C0BB
	/// @DnDArgument : "var" "vsp"
	vsp = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53483643
/// @DnDInput : 2
/// @DnDArgument : "expr" "hsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "vsp"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += hsp;
y += vsp;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A12EA3B
/// @DnDArgument : "var" "vsp"
/// @DnDArgument : "op" "2"
if(vsp > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 62C45817
	/// @DnDParent : 0A12EA3B
	/// @DnDArgument : "imageind" "image_index"
	/// @DnDArgument : "spriteind" "spr_player_bottom"
	/// @DnDSaveInfo : "spriteind" "spr_player_bottom"
	sprite_index = spr_player_bottom;
	image_index = image_index;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C942DB4
	/// @DnDParent : 0A12EA3B
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "not" "1"
	if(!(hsp == 0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 45560461
		/// @DnDParent : 0C942DB4
		/// @DnDArgument : "imageind" "image_index"
		/// @DnDArgument : "spriteind" "spr_player_bottom_right"
		/// @DnDSaveInfo : "spriteind" "spr_player_bottom_right"
		sprite_index = spr_player_bottom_right;
		image_index = image_index;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6C7191B4
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CEC8865
	/// @DnDParent : 6C7191B4
	/// @DnDArgument : "var" "vsp"
	/// @DnDArgument : "op" "1"
	if(vsp < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7EAE2EF4
		/// @DnDParent : 4CEC8865
		/// @DnDArgument : "imageind" "image_index"
		/// @DnDArgument : "spriteind" "spr_player_top"
		/// @DnDSaveInfo : "spriteind" "spr_player_top"
		sprite_index = spr_player_top;
		image_index = image_index;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45EB0B63
		/// @DnDParent : 4CEC8865
		/// @DnDArgument : "var" "hsp"
		/// @DnDArgument : "not" "1"
		if(!(hsp == 0))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 14FF00B4
			/// @DnDParent : 45EB0B63
			/// @DnDArgument : "imageind" "image_index"
			/// @DnDArgument : "spriteind" "spr_player_top_right"
			/// @DnDSaveInfo : "spriteind" "spr_player_top_right"
			sprite_index = spr_player_top_right;
			image_index = image_index;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09896D5A
/// @DnDArgument : "var" "vsp"
if(vsp == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EF91C47
	/// @DnDParent : 09896D5A
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "not" "1"
	if(!(hsp == 0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6978FBF3
		/// @DnDParent : 6EF91C47
		/// @DnDArgument : "imageind" "image_index"
		/// @DnDArgument : "spriteind" "spr_player_right"
		/// @DnDSaveInfo : "spriteind" "spr_player_right"
		sprite_index = spr_player_right;
		image_index = image_index;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 540EA58F
	/// @DnDParent : 09896D5A
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1D6FEA7A
		/// @DnDParent : 540EA58F
		/// @DnDArgument : "spriteind" "sprite_index"
		sprite_index = sprite_index;
		image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1AF19D04
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "op" "2"
if(hsp > 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 78CCE836
	/// @DnDParent : 1AF19D04
	image_xscale = 1;
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 284BDD99
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74E71A4A
	/// @DnDParent : 284BDD99
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "op" "1"
	if(hsp < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 62444F5C
		/// @DnDParent : 74E71A4A
		/// @DnDArgument : "xscale" "-1"
		image_xscale = -1;
		image_yscale = 1;
	}
}