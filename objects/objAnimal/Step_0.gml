/// @description Move along path
// You can write your code in this editor

if (live_call()) return live_result;

if (walkingToPoint) {
  
  //Move towards point
  var curDist = point_distance(x, y, pointList[| whichPoint][0], pointList[| whichPoint][1]);  
  var curDir = point_direction(x, y, pointList[| whichPoint][0], pointList[| whichPoint][1]);  
  image_angle = curDir;
 //show_debug_message("Begin: " + string(x) + ", " + string(y));
//  show_debug_message("Target: " + string(pointList[| whichPoint][0]) + ", " + string(pointList[| whichPoint][1]));
  //show_debug_message(string(curDist) + ", " + string(moveSpeed));
  if  (curDist <= moveSpeed) {
   // show_debug_message("Here!");
    x = pointList[| whichPoint][0];
    y = pointList[| whichPoint][1];
  } else {
   // show_debug_message("There!");
    move_towards_point(pointList[| whichPoint][0], pointList[| whichPoint][1], moveSpeed);    
  }
  //show_debug_message("End: " + string(x) + ", " + string(y));

  if (x ==  pointList[| whichPoint][0] && y ==  pointList[| whichPoint][1]) {
  
    walkingToPoint = false; 
    whichPoint = (whichPoint + 1) % totalPoints;
 //   show_debug_message("which: " + string(whichPoint));
    speed = 0;
    
    if (scrIsTickStep()) {
      walkingToPoint = true;
      var distToPoint = point_distance(x, y, pointList[| whichPoint][0], pointList[| whichPoint][1]);
      moveSpeed = distToPoint / (ticktockSpeed * room_speed - 2);
    }
    
    var nearestRotate = instance_nearest(x, y, objRotatingPad);
  //  show_debug_message(nearestRotate);
    //show_debug_message(string(nearestRotate.image_angle) + "< " + string(nearestRotate.targetRotation));
    if (nearestRotate.image_angle == nearestRotate.targetRotation || nearestRotate.targetRotation == nearestRotate.targetAngle) {
      scrChangeHypnosis(1); 
    } else {
      scrChangeHypnosis(decreaseAmount); 
    }
    
  }
  
} else {
  
  //show_debug_message(scrIsTickStep());
  if (scrIsTickStep()) {
    walkingToPoint = true;
    var distToPoint = point_distance(x, y, pointList[| whichPoint][0], pointList[| whichPoint][1]);
    moveSpeed = distToPoint / (ticktockSpeed * room_speed - 2);
  }
}