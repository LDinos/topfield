/// @description
//draw_self()
if (status == ALIVE)
{
	var weapon = weapons_list[weapon_selected]
	var spr = asset_get_index(weapon.sprite)
	var angle = image_angle-90
	if muzzle_anim != -1 {
		var _x = x + lengthdir_x(32 + weapon.muzzle_offset, image_angle)
		var _y = y + lengthdir_y(32 + weapon.muzzle_offset, image_angle)
		draw_sprite_ext(spr_muzzle,muzzle_anim,_x,_y,1,1,angle,c_white,1)
		muzzle_anim++
		if (muzzle_anim == sprite_get_number(spr_muzzle)) muzzle_anim = -1
	}
	draw_sprite_ext(spr,team_id-1,x,y,1,1,angle,c_white,1)
	draw_sprite_ext(sprite_index,team_id-1,x,y,1,1,angle,c_white,1)
}
else draw_sprite_ext(spr_player_dead, team_id-1, x, y, 1, 1, image_angle, c_white, 1)
draw_text(x,y,player_health)