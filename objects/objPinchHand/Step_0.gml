/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;


if (parent != noone) {
  image_angle = parent.image_angle;
  x = parent.x - 3 + lengthdir_x(sprite_width / 2, image_angle);
  y = parent.y - 3 + lengthdir_y(sprite_width / 2, image_angle);
}