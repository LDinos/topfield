// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function no_shooting(weapon){
	return 0;
}

function knife_shooting(weapon) {
	var xlen = lengthdir_x(hand_pos_x+16, point_direction(x, y, mouse_x, mouse_y))
	var ylen = lengthdir_y(-hand_pos_y+8, point_direction(x, y, mouse_x, mouse_y))
	add_hitbox(x+xlen, y+ylen, 1, 25, 2, 2, id)
	fire_rate_remaining = irandom_range(weapon.fire_rate_min, weapon.fire_rate_max)
	var snd = asset_get_index(weapon.shoot_sound)
	audio_play_sound(snd, 0, false)
}

function common_gun_shooting(weapon) {
		var in = (!player_moving) ? weapon.inaccuracy : weapon.moving_inaccuracy
		repeat(weapon.bullet_count) {
			var inaccuracy = irandom_range(-45*in, 45*in)
			var angle = point_direction(x, y, mouse_x, mouse_y)+inaccuracy
			create_bullet_tracer(x,y,depth,weapon,weapon.max_distance,angle,id, obj_other_player)
		}
		if (muzzle_anim == -1) muzzle_anim = 0
		audio_listener_position(x, y, 0);
		var snd = asset_get_index(weapon.shoot_sound)
		audio_play_sound_at(snd,x,y,0,0,64,1,false,0)
		fire_rate_remaining = irandom_range(weapon.fire_rate_min, weapon.fire_rate_max)
		if (weapon.ammo_type != "None") weapon.current_mag_ammo--
}