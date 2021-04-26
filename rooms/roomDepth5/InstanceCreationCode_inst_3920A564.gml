ds_list_clear(pointList);

pointList = ds_list_create();
var pos;
pos[0] = 651;
pos[1] = 88;
ds_list_add(pointList, pos);
var pos2;
pos2[0] = 699;
pos2[1] = 305;
ds_list_add(pointList, pos2);
var pos3;
pos3[0] = 488;
pos3[1] = 411;
ds_list_add(pointList, pos3);
var pos4;
pos4[0] = 262;
pos4[1] = 392;
ds_list_add(pointList, pos4);
var pos5;
pos5[0] = 213;
pos5[1] = 216;
ds_list_add(pointList, pos5);
var pos6;
pos6[0] = 408;
pos6[1] = 117;
ds_list_add(pointList, pos6);

whichPoint = 0;
totalPoints = 6;
walkingToPoint = true;

var distToPoint = point_distance(x, y, pointList[| whichPoint][0], pointList[| whichPoint][1]);
moveSpeed = distToPoint / (ticktockSpeed * room_speed - 2);
decreaseAmount = -5;