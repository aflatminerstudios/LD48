/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;


//show_debug_message(string(objTickControl.alarm[0]) + ", " + string(objTickControl.alarm[1]))
if (hitBeat) {
  ticktockSpeed = lerp(minTicktockSpeed, maxTicktockSpeed, curWeightPos);
  var totalSteps = ticktockSpeed * room_speed;

  //var curPct = curSteps / totalSteps;

  curAngle = easeScript(curSteps, tockAngle, tickAngle - tockAngle, totalSteps);
  
  
  if (curSteps >= totalSteps) {
    curDirection = -1; 
  }
  if (curSteps <= 0) {
    curDirection = 1; 
  }

  curSteps += curDirection;

} else {
  
  if (!waiting) {

    var totalSteps = catchupSpeed * room_speed;
    curSteps = clamp(curSteps, 0, totalSteps);
    curAngle = easeScript(curSteps, tockAngle, tickAngle - tockAngle, totalSteps);
    
    if (curSteps >= totalSteps || curSteps <= 0) {
      curSteps = clamp(curSteps, 0, totalSteps);
      waiting = true; 
    } else {
      if (abs(curAngle - tickAngle) >= abs(curAngle - tockAngle)) {
        curDirection = -1; 
      } else {
        curDirection = 1; 
      }
    }
    
    curSteps += curDirection;
    
  } else {
    
     if (scrIsTickStep()) {
      waiting = false;
      hitBeat = true;
      if (abs(curAngle - tickAngle) < 2) {
        curSteps = ticktockSpeed * room_speed;
      } else if (abs(curAngle - tockAngle) < 2) {
        curSteps = 0;
      }
      
      with (objPinchHand) {
        instance_destroy();
      }
      handObject = noone;
     }
  }
  
}


bar.image_angle = curAngle;

if (keyboard_check_pressed(ord("F"))) {
  curWeightPos = clamp(curWeightPos + weightMoveSpeed, 0.30, 1.0);
  hitBeat = false;
  waiting = false;  
  var totalSteps = ticktockSpeed * room_speed;
  curSteps =catchupSpeed * room_speed * (curSteps / totalSteps);
  if (handObject == noone) {
    handObject = instance_create_depth(weight.x, weight.y, weight.depth - 1, objPinchHand);
    handObject.parent = weight;
  }
} else if (keyboard_check_pressed(ord("A"))) {
  curWeightPos = clamp(curWeightPos - weightMoveSpeed, 0.30, 1.0);
  hitBeat = false;
  waiting = false;
  var totalSteps = ticktockSpeed * room_speed;
  curSteps = catchupSpeed * room_speed * (curSteps / totalSteps);
  if (handObject == noone) {
    handObject = instance_create_depth(weight.x, weight.y, weight.depth - 1, objPinchHand);
    handObject.parent = weight;
  }
}

with (handObject) {
  image_angle = parent.image_angle;
  x = parent.x - 3 + lengthdir_x(sprite_width / 2, image_angle);
  y = parent.y - 3 + lengthdir_y(sprite_width / 2, image_angle); 
}

angleDist = lerp(0, 90, curWeightPos - 0.50 * 6);
//show_debug_message(curWeightPos);
gear1.image_angle = 135 + angleDist;
gear2.image_angle = 225 - angleDist;

var weightDist = lerp(0, barLength, curWeightPos);
weight.x = bar.x + lengthdir_x(weightDist * bar.image_xscale, bar.image_angle+90);
weight.y = bar.y + lengthdir_y(weightDist * bar.image_yscale, bar.image_angle+90);
weight.image_angle = curAngle;


if (scrIsTickStep()) {
  if (abs(ticktockSpeed - 1.0) <= 0.05) {
    scrChangeHypnosis(1);
    ticktockSpeed = 1;
  } else {
    with (objDepthControl2) {
      if (hypLevel > 0) {
        scrChangeHypnosis(-1); 
      }
    }
  }
}

//show_debug_message(string(ticktockSpeed) + ", " + string(curWeightPos));