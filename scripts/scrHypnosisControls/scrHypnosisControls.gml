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