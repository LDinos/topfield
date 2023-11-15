/// @description
if (status == ALIVE)
{
	var weapon = weapons_list[weapon_selected]
	var spr = asset_get_index(weapon.sprite)
	var angle = 0
	if (fire_rate_remaining > 0) fire_rate_remaining--
	var pd = point_direction(x, y, mouse_x, mouse_y);
	angle = pd-90

	draw_sprite_ext(sprite_index,0,x-2,y-2,1,1,angle,c_black,0.6)
	if muzzle_anim != -1 {
		var _x = x + lengthdir_x(32 + weapon.muzzle_offset, pd)
		var _y = y + lengthdir_y(32 + weapon.muzzle_offset, pd)
		draw_sprite_ext(spr_muzzle,muzzle_anim,_x,_y,1,1,angle,c_white,1)
		muzzle_anim++
		if (muzzle_anim == sprite_get_number(spr_muzzle)) muzzle_anim = -1
	}
	draw_sprite_ext(spr,0,x,y,1,1,angle,c_white,1)
	draw_sprite_ext(sprite_index,0,x,y,1,1,angle,c_white,1)
	
	var _x = x + lengthdir_x(600, pd + (fov/2))
	var _y = y + lengthdir_y(600, pd + (fov/2))
	var _x2 = x + lengthdir_x(600, pd - (fov/2))
	var _y2 = y + lengthdir_y(600, pd - (fov/2))
	draw_line(x,y,_x,_y)
	draw_line(x,y,_x2,_y2)
}
else draw_sprite_ext(spr_player_dead, team_id-1, x, y, 1, 1, image_angle, c_white, 1)
