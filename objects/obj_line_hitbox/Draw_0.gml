/// @description
var _x = x + lengthdir_x(bullet_speed - bullet_length, angle)
var _y = y + lengthdir_y(bullet_speed - bullet_length, angle)
var _x2 = x + lengthdir_x(bullet_speed, angle)
var _y2 = y + lengthdir_y(bullet_speed, angle)
bullet_speed += bullet_speed
if (bullet_speed <= current_distance) {
	draw_line_width_color(_x-1,_y,_x2-1,_y2,3,c_gray,c_gray)
	draw_line_width_color(_x,_y,_x2,_y2,3,c_orange,c_orange) //tracer
}
draw_line_color(x,y,x2,y2,c_red,c_red) //debug

