if (jump == true and place_meeting(x,y,obj_floor)){
	vspeed =-15;
	gravity = 1;
	jump = false;
} 

#region CONTROLES
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
#endregion
#region MOVIMENTAÇÃO
var move = key_right - key_left;
hspd = move *spd
vspd = vspd +grv;

// COLISÃO HORIZONTAL
if (place_meeting(x+hspd,y,obj_wall)){
	while(!place_meeting(x+sign(hspd),y,obj_wall)){
		x = x+sign(hspd);
	}
	hspd=0;
}
x = x+hspd;



#endregion













