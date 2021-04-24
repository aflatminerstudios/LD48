// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function                       scrEaseInOutCubic(inputValue, outputStart, outputTotalDiff, inputMax)
/// @param {int} inputValue         Current time step
/// @param {int} outputStart        Start point of the output
/// @param {int} outputTotalDiff    Difference between start and end point of output
/// @param {int} inputMax           Maximum time step
/// @description                    Return value for a cubic easing in/out script
function scrEaseInOutCubic(inputValue, outputStart, outputTotalDiff, inputMax){
  inputValue /= inputMax * 0.5;
  if (inputValue < 1)
  {
    return outputTotalDiff * 0.5 * power(inputValue, 3) + outputStart;  
  }
  return outputTotalDiff * 0.5 * (power(inputValue - 2, 3) + 2) + outputStart;
}

function scrEaseInOutQuad(inputValue, outputStart, outputTotalDiff, inputMax){
  inputValue /= inputMax * 0.5;
  if (inputValue < 1)
  {
    return outputTotalDiff * 0.5 * inputValue * inputValue + outputStart;  
  }
  return outputTotalDiff * 0.5 * (--inputValue * (inputValue - 2) - 1) + outputStart;
}

function scrEaseInOutQuart(inputValue, outputStart, outputTotalDiff, inputMax){
  inputValue /= inputMax * 0.5;
  if (inputValue < 1)
  {
    return outputTotalDiff * 0.5 * power(inputValue, 4) + outputStart;  
  }
  return outputTotalDiff * 0.5 * (power(inputValue - 2, 4) - 2) + outputStart;
}

function scrEaseLinear(inputValue, outputStart, outputTotalDiff, inputMax){
  return outputTotalDiff * inputValue /inputMax + outputStart;
}