move_wrap(true, true, 0)
if (alarm[0] <= 0) {
	image_alpha -= 0.05
	if (image_alpha <= 0) instance_destroy()
} else {
	image_alpha += 0.05
}