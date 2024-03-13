/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

joyX = 0;
joyY = 0;
touchId = -1;

radius = sprite_width / 2;

input = function (inputTouchId, touchX, touchY)
{
  touchId = inputTouchId;	
}