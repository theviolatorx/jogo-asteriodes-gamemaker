if (room == rm_jogo){ 
	var _powerup = choose(obj_powerup_escudo, obj_powerup_projetil)
	instance_create_layer(random_range(0, room_width), random_range(0, room_height), "Instances", _powerup)
	alarm[0] = 600
}