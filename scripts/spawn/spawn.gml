// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn(){
	if global.online {
		//make server choose where to spawn us
	}
	else {
		do
		{
			var r = irandom(array_length(spawn_list)-1)
			var spawner = spawn_list[r]
		} until (spawner.team_id == obj_player.team_id)
		obj_player.x = spawner._x
		obj_player.y = spawner._y
		obj_player.status = ALIVE
	}

}