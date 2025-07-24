target_pos_x = mouse_x;
target_pos_y = mouse_y;

x = lerp(x, target_pos_x,0.2);
y = lerp(y, target_pos_y,0.2);

image_xscale = lerp(image_xscale, target_scale, 0.2);
image_yscale = lerp(image_yscale, target_scale, 0.2)

if (mouse_check_button(1)) {
	
	is_mouse_down = true;

	target_scale = 1.5;
	image_angle -= 4;
	
} else {
	
	is_mouse_down = false
	target_scale = 1;
	
	if (image_angle % 360) != 0 {
		image_angle = lerp (image_angle, 0, 0.2);
	}

}

