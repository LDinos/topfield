/// @description
var weapon = weapons_list[weapon_selected]
var _player_speed = player_speed * (1-weapon.heaviness)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_text(0,0,_player_speed)
draw_text(0,32,fire_rate_remaining)
draw_text(0,64,weapon.name)
draw_text(0,96,weapon_selected)
draw_text(0,128,string(weapon.current_mag_ammo) + "/" + string(weapon.current_total_ammo))
draw_text(0,162,player_health)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
var cx = camera_get_view_width(view_camera[0])
var cy = camera_get_view_height(view_camera[0])
var spawn_time = obj_game_rules.alarm[0]
if (spawn_time > 0) {
	var seconds = string((spawn_time div 60)+1)
	draw_text(cx/2, cy/2, "Spawning in " + seconds + "...")
}
if (reloading) {
	
	draw_healthbar(cx/2 - 128, 
			cy - 128, 
			cx/2 + 128, 
			cy - 96, 
			(1-(weapon.current_reload/weapon.reload_time))*100,
			c_black, c_yellow, c_yellow,0,true,false)
}

