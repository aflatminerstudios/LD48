/// @description Spawn paths
// You can write your code in this editor

if (live_call()) return live_result;

for (var i = 0; i < totalPoints; ++i) {
  var point1 = pointList[| i]; 
  var point2 = pointList[| (i + 1) % totalPoints]; 

  
  var layerID = layer_get_id("Assets_1");
  var theSprite = layer_sprite_create(layerID, point1[0], point1[1], whichPath);
  layer_sprite_angle(theSprite, point_direction(point1[0], point1[1], point2[0], point2[1]));
  
  var distance = point_distance(point1[0], point1[1], point2[0], point2[1]);
  var ratio = distance / sprite_get_width(whichPath);
  layer_sprite_xscale(theSprite, ratio);  
}