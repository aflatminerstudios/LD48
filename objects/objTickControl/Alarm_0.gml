/// @description Tick
// You can write your code in this editor

audio_play_sound(tickSound, 100, false);
alarm[1] = tickLength * room_speed;

if (gotoNextLevel) {
  with (objDepthControl) {
    scrGoToNextDepth(curDepth); 
  }
}