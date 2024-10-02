var _left, _right, _up, _down, _tiro
_left = keyboard_check(ord("A")) || keyboard_check(vk_left)
_right = keyboard_check(ord("D")) || keyboard_check(vk_right)
_up = keyboard_check(ord("W")) || keyboard_check(vk_up)
_down = keyboard_check(ord("S")) || keyboard_check(vk_down)
_tiro = keyboard_check_pressed(vk_space)


if (_up) {
	sprite_index = spr_nave_movendo
	speed = veloc
} else if (_down) {
	sprite_index = spr_nave_movendo
	speed = -veloc
} else {
	sprite_index = spr_nave_parada
	speed = lerp(speed, 0, .05)
}
if (_left) {
	direc = 3
} else if (_right) {
	direc = -3
} else {
	direc = lerp(direc, 0, 0.09)
}

direction += direc
image_angle = direction

if (_tiro) {
	var _projetil = instance_create_layer(x, y, "Instances", obj_projetil)
	audio_play_sound(snd_projetil, 1, false)
	_projetil.speed = +6
	_projetil.direction = direction
	_projetil.image_angle = direction
	_projetil.dano = dano_nave
}

move_wrap(true, true, 0)

if (alarm[0] > 0) {
	if (image_alpha <= 0) {
		alfa_add = 0.05
	} else if (image_alpha >= 1) {
		alfa_add = -0.05
	}
	image_alpha += alfa_add
} else {
	image_alpha = 1
}

if (vida <= 0) game_restart()

if (global.point >= 100){
	room_goto(rm_final)
}