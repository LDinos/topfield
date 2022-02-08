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
function new_items() {
	var mystruct = {
	no_weapon : {
		name : "-",
		current_mag_ammo : 1,
		current_total_ammo: 1,
		ammo_type : "None",
		sprite : spr_nothing, 
		},
	mp40 : {
		name : "MP40",
		ammo_type : "smg",
		max_ammo : 150,
		mag_ammo : 25, 
		current_mag_ammo : 25,
		current_total_ammo: 100,
		fire_rate_min : 5, 
		fire_rate_max : 7,
		max_damage : 15,
		damage_dropoff : "mp40",
		reload_time : 120,
		current_reload : 0,
		reload_sound : snd_pistol_reload,
		shoot_sound : snd_mp40_shoot,
		empty_sound : snd_pistol_empty,
		sprite : spr_mp40,
		bullet_hole_size : 0.4,
		max_distance : 800,
		shoot_func : common_gun_shooting
		},
	pistol : {
		name : "Pistol",
		ammo_type : "pistol",
		max_ammo : 150,
		mag_ammo : 10, 
		current_mag_ammo : 10,
		current_total_ammo: 60,
		fire_rate_min : 15, 
		fire_rate_max : 18,
		max_damage : 14,
		damage_dropoff : "pistol",
		reload_time : 90,
		current_reload : 0,
		reload_sound : snd_pistol_reload,
		empty_sound : snd_pistol_empty,
		shoot_sound : snd_pistol_shoot,
		sprite : spr_pistol,
		bullet_hole_size : 0.4,
		max_distance : 800,
		shoot_func : common_gun_shooting
		},
	revolver : {
		name : "Revolver",
		ammo_type : "pistol", 
		max_ammo : 40,
		mag_ammo : 6,
		max_damage : 70,
		damage_dropoff : "revolver",
		current_mag_ammo : 6,
		current_total_ammo: 20,
		current_reload : 0,
		reload_sound : snd_pistol_reload,
		empty_sound : snd_pistol_empty,
		shoot_sound : snd_revolver_shoot,
		fire_rate_min : 45, 
		fire_rate_max : 50, 
		reload_time : 125,
		bullet_hole_size : 0.5,
		sprite : spr_revolver,
		max_distance : 800,
		shoot_func : common_gun_shooting
		},
	deagle : {
		name : "Deagle",
		ammo_type : "pistol",
		max_ammo : 25,
		mag_ammo : 6, 
		current_mag_ammo : 0,
		current_total_ammo: 0,
		fire_rate_min : 25, 
		fire_rate_max : 29,
		reload_time : 90,
		max_distance : 800,
		sprite : spr_nothing
		},
	lazergun : {
		name : "Lazergun",
		ammo_type : "energy", 
		mag_ammo : 5, 
		current_mag_ammo : 0, 
		current_total_ammo: 0,
		fire_rate_min : 60, 
		fire_rate_max : 70,
		reload_time : 180,
		max_distance : 800,
		sprite : spr_nothing
		},
	grenade : {
		name : "Grenade",
		ammo_type : "grenades",
		max_ammo : 4,
		mag_ammo : 1, 
		current_mag_ammo : 0,
		current_reload : 0,
		current_total_ammo: 0,
		reload_time : 60, 
		sprite : spr_nothing,
		max_distance : 800,
		shoot_func : no_shooting
		},
	smoke : {
		name : "Smoke Grenade",
		ammo_type : "smokes", 
		max_ammo : 4,
		mag_ammo : 1, 
		current_mag_ammo : 0,
		current_total_ammo : 0,
		reload_time : 60,
		max_distance : 800,
		sprite : spr_nothing
		},
	molotov : {
		name : "Molotov",
		ammo_type : "incediaries", 
		max_ammo : 4,
		mag_ammo : 1, 
		current_mag_ammo : 0, 
		current_total_ammo : 0,
		reload_time : 60,
		max_distance : 800,
		sprite : spr_nothing
		},
	he_grenade : {
		name : "HE Grenade",
		ammo_type : "incediaries",
		max_ammo : 4,
		mag_ammo : 1,
		current_mag_ammo : 0, 
		current_total_ammo : 0,
		reload_time : 60,
		max_distance : 800,
		sprite : spr_nothing
		},
	goo_grenade : {
		name : "GooNade",
		ammo_type : "goo", 
		max_ammo : 4,
		mag_ammo : 1, 
		current_mag_ammo : 0, 
		current_total_ammo : 0,
		reload_time : 60,
		max_distance : 800,
		sprite : spr_nothing
		},
	knife : {
		name : "Knife", 
		ammo_type : "None",
		max_damage : 25,
		damage_dropoff : "knife",
		current_mag_ammo : 1,
		current_total_ammo : 1,
		fire_rate_min : 20, 
		fire_rate_max : 30,
		shoot_sound : snd_whoosh, 
		sprite : spr_knife,
		max_distance : 48,
		bullet_hole_size : 0,
		shoot_func : common_gun_shooting
		}
	}
	return mystruct;
}