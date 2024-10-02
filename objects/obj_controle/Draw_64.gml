var _largura = display_get_width()
var _altura = display_get_height()
var _c = make_color_rgb(131, 68, 87)

draw_set_font(fnt_basica)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (room == rm_menu){
	if (alpha <= 0){
		alpha_add = 0.05
	} else if (alpha >= 1){
		alpha_add = -0.05
	}
	alpha += alpha_add
	
	draw_text_color(_largura/2, _altura/3,
	"Neste jogo voce deve desviar dos asteroides e destrui-los para ganhar pontos.\nPara vencer, chegue em 1000 pontos.\nBoa sorte :)",
	c_white, c_white, c_white, c_white, 1)
	
	draw_text_color(_largura/2, _altura - _altura/3,
	"Aperte 'ESPACO' para iniciar!",
	_c, _c, _c, _c, alpha)
	
	if (keyboard_check_pressed(vk_space)) room_goto(rm_jogo)
	
} else if (room == rm_jogo){
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_text_color(20, 20, "Vidas: " + string(obj_nave.vida), _c, _c, _c, _c, 1)
	draw_text_color(20, 50, "Pontuacao: " + string(global.point), c_white, c_white, c_white, c_white, 1)
} else if (room == rm_final){
	
	draw_text_ext_color(_largura/2, _altura/2, 
	"Parabens!\nVoce conseguiu atingor 1000 pontos!\nPressione 'R' para jogar novamente!",
	80, 900, _c, _c, _c, _c, 1)
	
	var _restart_game = keyboard_check_pressed(ord("R"))
	if (_restart_game) game_restart()

}

