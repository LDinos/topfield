// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shoot(){
	var weapon = weapons_list[weapon_selected]	
	if weapon.name != "-"
	{
		if (weapon.current_mag_ammo > 0)
		{
			var shoot_func = asset_get_index(weapon[$ "shoot_func"])
			shoot_func(weapon, 1000)
		}
		else {
			var snd = asset_get_index(weapon.empty_sound)
			if !audio_is_playing(snd) audio_play_sound(snd, 0, false)
		}
	}
}
