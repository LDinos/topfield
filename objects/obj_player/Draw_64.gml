/// @description
var weapon = weapons_list[weapon_selected]

draw_text(0,0,player_health)
draw_text(0,32,fire_rate_remaining)
draw_text(0,64,weapon.name)
draw_text(0,96,weapon_selected)
draw_text(0,128,string(weapon.current_mag_ammo) + "/" + string(weapon.current_total_ammo))


if (reloading) {
	var cx = camera_get_view_width(view_camera[0])
	var cy = camera_get_view_height(view_camera[0])
	draw_healthbar(cx/2 - 128, 
			cy - 128, 
			cx/2 + 128, 
			cy - 96, 
			(1-(weapon.current_reload/weapon.reload_time))*100,
			c_black, c_yellow, c_yellow,0,true,false)
}