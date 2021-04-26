ds_list_clear(pointList);

pointList = ds_list_create();
var pos;
pos[0] = 173;
pos[1] = 160;
ds_list_add(pointList, pos);
var pos2;
pos2[0] = 440;
pos2[1] = 117;
ds_list_add(pointList, pos2);
var pos3;
pos3[0] = 672;
pos3[1] = 255;
ds_list_add(pointList, pos3);
var pos4;
pos4[0] = 518;
pos4[1] = 408;
ds_list_add(pointList, pos4);
var pos5;
pos5[0] = 255;
pos5[1] = 383;
ds_list_add(pointList, pos5);

whichPoint = 0;
totalPoints = 5;
walkingToPoint = true;

var distToPoint = point_distance(x, y, pointList[| whichPoint][0], pointList[| whichPoint][1]);
moveSpeed = distToPoint / (ticktockSpeed * room_speed - 2);
decreaseAmount = -3;

frameObj = instance_create_depth(400, 300, depth + 2, objD4Frame);
eyesObj = instance_create_depth(400, 300, depth + 1, objD4Eyes);
eyesObj.baseX = 400;
eyesObj.baseY = 300;