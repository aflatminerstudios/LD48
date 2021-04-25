// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@function              scrGoToNextDepth(curDepth)
///@param {int} curDepth  The current depth
///@description           Takes you to the next depth/level

function scrGoToNextDepth(curDepth){
  show_debug_message("Completed depth " + string(curDepth));
  
  switch(curDepth) {
  
  //Watch level
  case 0:
    room_goto(roomDepth1);    
  }
  
}

