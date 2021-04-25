ds_list_clear(pointList);

pointList = ds_list_create();
var pos;
pos[0] = 216;
pos[1] = 318;
ds_list_add(pointList, pos);
var pos2;
pos2[0] = 352;
pos2[1] = 185;
ds_list_add(pointList, pos2);
var pos3;
pos3[0] = 570;
pos3[1] = 230;
ds_list_add(pointList, pos3);
var pos4;
pos4[0] = 602;
pos4[1] = 377;
ds_list_add(pointList, pos4);
var pos5;
pos5[0] = 384;
pos5[1] = 487;
ds_list_add(pointList, pos5);

whichPoint = 0;
totalPoints = 5;
walkingToPoint = true;

var distToPoint = point_distance(x, y, pointList[| whichPoint][0], pointList[| whichPoint][1]);
moveSpeed = distToPoint / (ticktockSpeed * room_speed - 2);
decreaseAmount = -3;