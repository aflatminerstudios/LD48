// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@function  scrIncreaseHypnosis(amount)
///@param {int} How much to change hypnosis by (signed)
function scrChangeHypnosis(amount){
  with (objDepthControl) {
    hypLevel += amount; 
    show_debug_message("Hypnosis level: " + string(hypLevel));
  }
}

///@function setBrightnessVars(shaderControl, percentage, exiting)

function scrFadeOut(shaderControl, percentage, exiting, fadeSpeedMult) {

  with (shaderControl) {    
    if (!nextLevel) {
      fadeSpeed = is_undefined(fadeSpeedMult) ? fadeSpeedBase : fadeSpeedBase * fadeSpeedMult;
      fadingOut = true;
      fadeTarget = percentage * fadeEnd;
      fadeDir = sign(fadeTarget - fadeAmount);
      nextLevel = exiting;
      alarm[0] = 1;
      //show_debug_message("Setting next level to " + string(exiting));
    }
  }
}