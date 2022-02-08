/// @description
image_index = team_id -1
if (status == ALIVE)
{
	var weapon = weapons_list[weapon_selected]
	if (weapon.current_mag_ammo == 0) && (fire_rate_remaining == 0)
	{
		reload(weapon)
	}

	var xchange = keyboard_check(vk_right) - keyboard_check(vk_left)
	var ychange = keyboard_check(vk_down) - keyboard_check(vk_up)

	if tile_meeting(x + xchange*player_speed, y, global.T_WALLS) {
		while (!tile_meeting(x + sign(xchange), y, global.T_WALLS)) {
			x += sign(xchange)
		}
		xchange = 0
	}

	if tile_meeting(x, y + ychange*player_speed, global.T_WALLS) {
		while (!tile_meeting(x, y + sign(ychange), global.T_WALLS)) {
			y += sign(ychange)
		}
		ychange = 0
	}

	x += xchange*player_speed
	y += ychange*player_speed

	if (!reloading) {
		if keyboard_check_pressed(ord("R")) {weapon.current_total_ammo += weapon.current_mag_ammo; weapon.current_mag_ammo = 0; reload(weapon)}
		var wepchange = 0
		if mouse_wheel_down() wepchange = -1
		else if mouse_wheel_up() wepchange = 1
		if (wepchange != 0)
		{
			if (weapon_selected + wepchange < 0) weapon_selected = array_length(weapons_list) - 1
			else if (weapon_selected + wepchange > array_length(weapons_list) - 1) weapon_selected = 0
			else weapon_selected += wepchange
		}
	}

	if mouse_check_button(mb_left) && fire_rate_remaining == 0 shoot()
}