/// @description check collision
var col_found = false;
do {
	current_distance += 16
	if (current_distance > max_distance) current_distance = max_distance
	x2 = x+lengthdir_x(current_distance,angle)
	y2 = y+lengthdir_y(current_distance,angle)
	var personhit = instance_position(x2,y2,player_to_hit)
	
	if tile_meeting(x2,y2,global.T_WALLS) {col_found = true; break;}
	else if personhit != noone {
		col_found = true;
		if damage_curve != ""
		{
			var curve = animcurve_get_channel(A_damage_dropoffs, damage_curve)
			personhit.player_health -= round(animcurve_channel_evaluate(curve, current_distance/max_distance)*max_damage)
		}
		else personhit.player_health -= max_damage
		break;
		}
	
} until (current_distance == max_distance)

if (!col_found) {
	var b = instance_create_depth(x2,y2,depth, obj_bullethole)
	b.image_xscale = bullet_hole_size
	b.image_yscale = bullet_hole_size
}