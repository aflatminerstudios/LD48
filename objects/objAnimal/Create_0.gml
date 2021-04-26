/// @description Initialize variables
// You can write  your code in this editor
if (live_call()) return live_result;

sprite_index = choose(sprMouse, sprFinger);

pointList = ds_list_create();
var pos;
pos[0] = 192;
pos[1] = 403;
ds_list_add(pointList, pos);
var pos2;
pos2[0] = 288;
pos2[1] = 141;
ds_list_add(pointList, pos2);
var pos3;
pos3[0] = 576;
pos3[1] = 141;
ds_list_add(pointList, pos3);
var pos4;
pos4[0] = 480;
pos4[1] = 403;
ds_list_add(pointList, pos4);

//ticktocklength in seconds
ticktockSpeed = 1;
whichPoint = 0;
totalPoints = 4;
walkingToPoint = true;

var distToPoint = point_distance(x, y, pointList[| whichPoint][0], pointList[| whichPoint][1]);
moveSpeed = distToPoint / (ticktockSpeed * room_speed - 2);

decreaseAmount = -1;

whichPath = choose(sprDotPath, sprBrassPath, sprInkPath, sprWoodPath);

alarm[0] = 1;


//So animal goes on top of things
depth -= 1;