move_wrap(true, true, 0)
image_angle += rotate
if (vida <= 0 ){
	global.point += 10
	audio_play_sound(snd_explosao_asteroide, 1, false)
	repeat(3){
		instance_create_layer(x, y, "Instances", obj_asteroide_medio)
	}
	repeat(6){
		instance_create_layer(x, y, "Instances", obj_detritos)
	}
	instance_destroy()
}