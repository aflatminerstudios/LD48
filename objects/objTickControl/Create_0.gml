/// @description Setup initial variables
// You can write your code in this editor

//Tick length in seconds
tickLength = 1;

alarm[0] = tickLength * room_speed;

tickSound = sndTick;
tockSound = sndTock;


//TODO: Remove for audio!
audio_master_gain(0);