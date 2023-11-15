function reload(weapon){
	if (weapon.ammo_type != "None")
	{
		if (weapon.current_reload == 0) { //if empty mag and havent started reloading yet
			if (weapon.current_total_ammo > 0) //if we have ammo to reload to
			{
				audio_listener_position(x, y, 0);
				reloading = true
				var snd = asset_get_index(weapon.reload_sound)
				audio_play_sound_at(snd,x,y,0,0,64,1,false,0)
				weapon.current_reload = weapon.reload_time
			}
		}
		else { //if reload has started
			weapon.current_reload--
			if (weapon.current_reload == 0) { //if reload finished
				var magammo = (weapon.current_total_ammo < weapon.mag_ammo) ? weapon.current_total_ammo : weapon.mag_ammo
				weapon.current_mag_ammo = magammo 
				weapon.current_total_ammo -= magammo
				if (weapon.current_total_ammo < 0) weapon.current_total_ammo = 0
				reloading = false
				}
		}
	}
}