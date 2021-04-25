// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@function              scrGoToNextDepth(curDepth)
///@param {int} curDepth  The current depth
///@description           Takes you to the next depth/level

function scrGoToNextDepth(curDepth){
	debug_log("Completed depth " + string(curDepth));
  
  switch(curDepth) {
  
  //Watch level
  case 0:
    room_goto(roomDepth1);    
    break;
  case 1:
    room_goto(roomDepth2);
    break;
  default:
    room_goto(roomDepthFinal);
    break;
  }
  
}

