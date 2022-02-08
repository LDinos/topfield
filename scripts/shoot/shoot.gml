// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shoot(){
	var weapon = weapons_list[weapon_selected]
	if weapon.name != "-"
	{
		if (weapon.current_mag_ammo > 0)
		{
			var shoot_func = weapon.shoot_func
			shoot_func(weapon, 1000)
		}
		else if !audio_is_playing(weapon.empty_sound) audio_play_sound(weapon.empty_sound, 0, false)
	}
}
