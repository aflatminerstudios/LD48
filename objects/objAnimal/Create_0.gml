/// @description Initialize variables
// You can write  your code in this editor
if (live_call()) return live_result;

sprite_index = choose(sprMouse, sprFinger);

pointList = ds_list_create();
var pos;
pos[0] = 293;
pos[1] = 130;
ds_list_add(pointList, pos);
var pos2;
pos2[0] = 532;
pos2[1] = 125;
ds_list_add(pointList, pos2);
var pos3;
pos3[0] = 416;
pos3[1] = 380;
ds_list_add(pointList, pos3);
var pos4;
pos4[0] = 196;
pos4[1] = 378;
ds_list_add(pointList, pos4);

//ticktocklength in seconds
ticktockSpeed = 1;
whichPoint = 3;
totalPoints = 4;
walkingToPoint = true;

var distToPoint = point_distance(x, y, pointList[| whichPoint][0], pointList[| whichPoint][1]);
moveSpeed = distToPoint / (ticktockSpeed * room_speed - 2);

decreaseAmount = -1;