/// @description
var l = instance_create_depth(x,y,depth,obj_line_hitbox)
l.x2 = x + 128
l.max_damage = 25
l.player_to_hit = obj_player
with(l) event_user(0)
alarm[0] = 60