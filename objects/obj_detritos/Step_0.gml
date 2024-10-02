move_wrap(true, true, 0)
image_angle += rotate
if (vida <= 0 ){
	global.point += 3
	instance_destroy()
}
image_alpha -= 0.0050
if (image_alpha <= 0){
	instance_destroy()
}