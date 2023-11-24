#region OBSTÁCULOS
var x1 = irandom_range(1622,2500);
var y1 = room_height-305;

var margin = 40;

var spike = instance_create_layer(x1,y1,"Obstacle",obj_obstacle)
spike.sprite_index = spr_obstacle;

var coin = instance_create_layer(x1,spike.y - sprite_get_height(spr_coin)+76,"Obstacle",obj_coin)
coin.target = spike.id;


#endregion

alarm[0] = timer;



















