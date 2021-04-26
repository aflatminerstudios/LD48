/// @description Swap angle, etc.
// You can write your code in this editor

if (live_call()) return live_result;

var totalSteps = ticktockSpeed * room_speed;

//var curPct = curSteps / totalSteps;

var curAngle = easeScript(curSteps, tockAngle, tickAngle - tockAngle, totalSteps);
image_angle = curAngle;


if (curSteps >= totalSteps) {
  curDirection = -1; 
}
if (curSteps <= 0) {
  curDirection = 1; 
}

curSteps += curDirection;

if (curSteps <= activeBuffer || (totalSteps - curSteps <= activeBuffer)) {  
  active = true;
  if (hitObj == noone) {
    hitObj = instance_create_depth(x, y, depth - 1, objWatchHit);
    hitObj.parent = self.id;
    hitObj.image_xscale = image_xscale;
    hitObj.image_yscale = image_yscale;
  }
} else {

  active = false;

  if (hitObj != noone) {
    with (hitObj) {
      instance_destroy(); 
    }
    hitObj = noone; 
  }
}


//If active, check for correct key press
if (active) {  
  
  with (objDepthControl) {
    if (keyboard_check_pressed(ord("A"))) {    
      scrChangeHypnosis(1);
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


//When watch is on right, make it shiny
if (image_angle < 0) {
  sprite_index = sprWatch; 
} else {
  sprite_index = sprWatchShiny; 
}

with (hitObj) {
  x = parent.x + lengthdir_x(940 * parent.image_xscale, parent.image_angle - 90);
  y = parent.y + lengthdir_y(940 * parent.image_yscale, parent.image_angle - 90);
}


if (eyesObj != noone) {
  //For moving eyes
  if (objTickControl.alarm[0] > 0) {
    pct = objTickControl.alarm[0] / room_speed;
  } else {
    pct = 1 - objTickControl.alarm[1] / room_speed;
  }

  eyesObj.x = eyesObj.baseX + lerp(-10, 10, pct);
}