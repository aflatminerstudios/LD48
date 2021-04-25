/// @description Setup initial variables
// You can write your code in this editor
if (live_call()) return live_result;

//Change these two based on what key to press
keyPressCheck = scrCheckAKey;
keySprite = sprAPad;

//For rotation
isRotating = false;
targetAngle = 0;
startAngle = image_angle;
curSteps = 0;
stepsToRotate = 0.25 * room_speed;
easeScript = scrEaseInOutCubic;
dirToRotate = 1;


targetRotation = 90;
showMessages = false;