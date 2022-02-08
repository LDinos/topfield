// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_bullet_tracer(_x, _y, _depth, weapon, max_distance, angle, shooter_id){
	var l = instance_create_depth(_x,_y,_depth,obj_line_hitbox)
		l.max_damage = weapon.max_damage
		l.damage_curve = weapon.damage_dropoff
		l.max_distance = max_distance
		l.angle = angle
		l.bullet_hole_size = weapon.bullet_hole_size
		l.shooter = shooter_id
		with(l) event_user(0)
}