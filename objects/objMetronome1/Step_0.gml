/// @description Move bar and weight
// You can write your code in this editor

if (live_call()) return live_result;


var totalSteps = ticktockSpeed * room_speed;

//var curPct = curSteps / totalSteps;

curAngle = script_execute(easeScript, curSteps, tockAngle, tickAngle - tockAngle, totalSteps);
bar.image_angle = curAngle;

weight.x = bar.x + lengthdir_x(180 * bar.image_xscale, bar.image_angle+90);
weight.y = bar.y + lengthdir_y(180 * bar.image_yscale, bar.image_angle+90);
weight.image_angle = curAngle;

if (curSteps >= totalSteps) {
  curDirection = -1; 
}
if (curSteps <= 0) {
  curDirection = 1; 
}

curSteps += curDirection;

if (curSteps <= activeBuffer || (totalSteps - curSteps <= activeBuffer)) {  
  active = true;
} else {
  active = false;
  pushed = false;
}



//If active, check for correct key press
if (active) {  
  
  var theKey = ord("A");
  
  if (curAngle < 0) {
    theKey = ord("F"); 
  }
  
  with (objDepthControl) {
    
    if (keyboard_check_pressed(theKey)) {    
      scrChangeHypnosis(1);
      pushed = true;
    } else if (keyboard_check_pressed(vk_anykey)) {    
      scrChangeHypnosis(-1);        
    }
  }
  
} else {
  //Otherwise, check for invalid press 
  with (objDepthControl) {
    if (keyboard_check_pressed(vk_anykey)) {    
      scrChangeHypnosis(-1);
    }
  }
}
