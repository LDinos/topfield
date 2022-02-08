/// @description
status = DEAD
hand_pos_x = 14
hand_pos_y = -20
reloading = false
team_id = 1
ammo = ds_map_create() //how much ammo we currently have
ds_map_add(ammo, "pistol", 25)
ds_map_add(ammo, "smg", 0)
ds_map_add(ammo, "rifle", 0)
ds_map_add(ammo, "energy", 0)
ds_map_add(ammo, "sniper", 0)
ds_map_add(ammo, "grenades", 2)
ds_map_add(ammo, "incediaries", 0)
ds_map_add(ammo, "smokes", 0)
ds_map_add(ammo, "goo", 0)
ds_map_add(ammo, "None", 0)

items = new_items()
weapon_selected = MELEE
weapons_list = [
	items.pistol,	//PISTOL
	items.mp40,			 //SMG
	items.revolver,			//RIFLE
	items.no_weapon, //GRENADE
	items.knife //MELEE
]
fire_rate_remaining = 0
player_health = 100
player_speed = 3