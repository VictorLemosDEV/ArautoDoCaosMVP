// Exemplo de código de movimento no Evento Step do obj_player
var _move_speed = 4;
var _key_right = keyboard_check(ord("D"));
var _key_left = keyboard_check(ord("A"));
var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));

var _hspd = (_key_right - _key_left) * _move_speed;
var _vspd = (_key_down - _key_up) * _move_speed;

x += _hspd;
y += _vspd;