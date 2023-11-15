/// @description
application_surface_draw_enable(false);
global.online = false
global.weapons = file_read_json("default_weapons.json")
global.player_inventory = file_read_json("player_inventory.json")
if (!global.online)
{
	spawn_list = []
	var i = 0;
	with(obj_spawnpoint) {
		other.spawn_list[i] = {
			_x : x,
			_y : y,
			team_id : team_id
		}
		i++
		instance_destroy()
	}
}
alarm[0] = 120