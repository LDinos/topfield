/// @description
var weapon = weapons_list[weapon_selected]
create_bullet_tracer(x, y, depth, weapon, weapon.max_distance, image_angle, obj_other_player, obj_player)
var snd = asset_get_index(weapon.shoot_sound)
audio_play_sound_at(snd,x,y,0,0,64,1,false,0)
muzzle_anim = 0
alarm[0] = irandom_range(60,120)