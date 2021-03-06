/// @description Change fading variables
// You can write your code in this editor

if (live_call()) return live_result;

if (fadingOut) {
  
  //If you haven't met the target yet
  if ((fadeTarget - fadeDir * fadeAmount) > 0) {
    fadeAmount += fadeSpeed * fadeDir;      
    alarm[0] = 1;  
  } else {
    fadeAmount = fadeTarget; 
    fadingOut = false;
    
    if (nextLevel) {
      with (objTickControl) {
        gotoNextLevel = true;
      }      
    }
  }
  
  brightnessAmt = lerp(brightnessBegin, brightnessEnd, fadeAmount);
 radialBlurOffsetAmt = lerp(blurOffsetBegin, blurOffsetEnd, fadeAmount);

}