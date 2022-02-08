function tile_meeting(xx, yy, tilemap){
	
///@arg x
///@arg y
///@arg tilemap
var xp, yp, meeting;

//save our current position
xp = x;
yp = y;

//move to the position where we wanna check for a tile collision
x = xx;
y = yy;

//check for collision on all four corners of the collision mask
meeting =		tilemap_get_at_pixel(tilemap, bbox_right, bbox_top)
				||
				tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom)
				||
				tilemap_get_at_pixel(tilemap, bbox_left, bbox_top)
				||
				tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom);

//Move back to the original position
x = xp;
y = yp;

//Return wether or not there was a collision
return(meeting);
}