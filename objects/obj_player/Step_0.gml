// Exemplo de código de movimento no Evento Step do obj_player
var _move_speed = 4;
var _key_right = keyboard_check(ord("D"));
var _key_left = keyboard_check(ord("A"));
var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));



var _hspd = (_key_right - _key_left) * _move_speed;
	var _vspd = (_key_down - _key_up) * _move_speed;
	
	if (place_meeting(x + _hspd, y, obj_wall)) {
		
		while (place_meeting(x + sign(_hspd), y, obj_wall)) {
		
			x += sign(_hspd);
			
			
		}
		
		_hspd = 0;
		
	}
	
	x += _hspd;
	
	if (place_meeting(x, y + _vspd, obj_wall)) {
		
		while (place_meeting(x, y + sign(_vspd), obj_wall)) {
		
			x += sign(_vspd);
			
			
		}
		
		_vspd = 0;
		
	}
	
	y += _vspd;
	