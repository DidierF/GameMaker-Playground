/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;

sprMove = sSlime;

enemyScript[ENEMYSTATE.WANDER] = SlimeWander;
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));