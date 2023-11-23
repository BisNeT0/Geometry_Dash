

#region CONTROLES
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);


//PULO
//if (jump == true and place_meeting(x,y,obj_floor)){
//	vspeed =-15;
//	gravity = 1;
//	jump = false;
//} 

//PULO
vspd = vspd +grv;
//vspd = clamp(vspd,-vspd_clamp,vspd_clamp);  --CONTROLAR PULO
if(place_meeting(x,y+vspd,obj_wall)){
	while(!place_meeting(x,y+sign(vspd),obj_wall)){
		y =y +sign(vspd);
	}
	vspd = 0;
}

y = y+vspd;

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

#region ROTAÇÃO
angle = lerp(angle,-vspd*360,.9)
#endregion











