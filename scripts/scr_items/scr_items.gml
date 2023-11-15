/*	name				| string - Name shown for the UI
	current_mag_ammo	| integer - How many bullets do we have in the mag right now
	current_total_ammo	| integer - How much ammo in total does the player carry right now
	ammo_type			| string - Use "None" if it doesn't use ammo
	sprite				| sprite - Weapon sprite for the player hands to hold
	max_ammo			| integer - Maximum ammo that the player can have for this weapon
	max_distance		| integer - Maximum travel units the bullet can reach
	mag_ammo			| integer - Maximum ammo that can fit in the mag
	fire_rate_min		| integer - Minimum fire rate frames
	fire_rate_max		| integer - Max fire rate frames
	max_damage			| integer - Max damage the weapon can do on minimum distance
	damage_dropoff		| anim_curve_channel - What percent of max damage is sent depending on distance
	reload_time			| integer - Number of frames needed to fully reload
	current_reload		| integer - Current reload frame
	reload_sound		| sound - The sound played when starting reloading
	shoot_sound			| sound - The sound played when shooting
	empty_sound			| sound - The sound played when shooting with empty mag
	bullet_hole_size	| float - The size of bullet hole on the floor when shot misses
	shoot_func			| function - The function trigger when shooting
*/
