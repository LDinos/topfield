/// @description
global.online = false
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