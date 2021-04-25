/// @description Tock
// You can write your code in this editor

audio_play_sound(tockSound, 100, false);
alarm[0] = tickLength * room_speed;

if (gotoNextLevel) {
  with (objDepthControl) {
    scrGoToNextDepth(curDepth); 
  }
}