function tile_meeting(xx, yy, tilemap, subdivisions = 3){
	
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
for(var i = 0; i <= subdivisions; i++) {
	var ypos = lerp(bbox_bottom, bbox_top, i/subdivisions)
	var xcenter = (bbox_right - bbox_left)/2
	meeting =		tilemap_get_at_pixel(tilemap, bbox_left, ypos)
					||
					tilemap_get_at_pixel(tilemap, bbox_right, ypos)
					||
					tilemap_get_at_pixel(tilemap, bbox_left + xcenter, ypos)
	if (meeting) {
		x = xp;
		y = yp;
		return(meeting);
	}
}

//Move back to the original position
x = xp;
y = yp;

//Return wether or not there was a collision
return(meeting);
}