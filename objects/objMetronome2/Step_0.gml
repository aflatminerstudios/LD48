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
    
     if (objTickControl.alarm[0] = 0 || objTickControl.alarm[1] = 0) {
      waiting = false;
      hitBeat = true;
      if (abs(curAngle - tickAngle) < 2) {
        curSteps = ticktockSpeed * room_speed;
      } else if (abs(curAngle - tockAngle) < 2) {
        curSteps = 0;
      }
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
  
} else if (keyboard_check_pressed(ord("A"))) {
  curWeightPos = clamp(curWeightPos - weightMoveSpeed, 0.30, 1.0);
  hitBeat = false;
  waiting = false;
  var totalSteps = ticktockSpeed * room_speed;
  curSteps = catchupSpeed * room_speed * (curSteps / totalSteps);
}

var weightDist = lerp(0, barLength, curWeightPos);
weight.x = bar.x + lengthdir_x(weightDist * bar.image_xscale, bar.image_angle+90);
weight.y = bar.y + lengthdir_y(weightDist * bar.image_yscale, bar.image_angle+90);
weight.image_angle = curAngle;