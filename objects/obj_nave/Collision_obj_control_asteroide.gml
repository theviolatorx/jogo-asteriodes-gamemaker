if (alarm[0] <= 0){
	if (!escudo) vida -=1
	escudo = false
	
	with (other){
		vida -=1
	}

	alarm[0] = 180
}