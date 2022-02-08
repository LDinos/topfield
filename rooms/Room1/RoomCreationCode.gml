global.T_WALLS = layer_tilemap_get_id(layer_get_id("L_Walls"));
global.T_FLOOR = layer_tilemap_get_id(layer_get_id("L_Floor"));
instance_create_layer(0,0,"Instances",obj_game_rules)