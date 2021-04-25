/// @description Rotate on keypress
// You can write your code in this editor

if (live_call()) return live_result;
//show_debug_message(image_angle);
if (isRotating) {
  //Rotate 
  var curAngle = easeScript(curSteps, startAngle, targetAngle - startAngle, stepsToRotate);
  image_angle = curAngle;

  
  if (abs(targetAngle - curAngle) < 1) {
    image_angle = targetAngle;
    isRotating = false;
    if (image_angle >= 360) {
      image_angle -= 360; 
      
    }
  }
  curSteps += 1;
} else {
    
  //Check to see if you should rotate
  if (keyPressCheck()) {
    //Rotate 90 degrees
    isRotating = true;
    startAngle = image_angle
    targetAngle = image_angle + 90 * dirToRotate;        
    curSteps = 0;
  }
}