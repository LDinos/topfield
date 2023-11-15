// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_hitbox(xx, yy, player_id, damage, scale_x, scale_y, dont_hit_id){
	var hitbox = instance_create_depth(xx, yy, depth, obj_hitbox)
	hitbox.team_id = player_id
	hitbox.damage = damage
	hitbox.image_xscale = scale_x
	hitbox.image_yscale = scale_y
	hitbox.dont_hit_id = dont_hit_id
}