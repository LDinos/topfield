/// @description
if (status == ALIVE)
{
	var weapon = weapons_list[weapon_selected]
	var angle = 0
	if (fire_rate_remaining > 0) fire_rate_remaining--
	var pd = point_direction(x, y, mouse_x, mouse_y);
	angle = pd-90

	draw_sprite_ext(sprite_index,0,x-2,y-2,1,1,angle,c_black,0.6)
	draw_sprite_ext(weapon.sprite,0,x,y,1,1,angle,c_white,1)
	draw_sprite_ext(sprite_index,0,x,y,1,1,angle,c_white,1)
}