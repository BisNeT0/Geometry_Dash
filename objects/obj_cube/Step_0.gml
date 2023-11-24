

#region CONTROLES
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);

//PULO
vspd = vspd + grv;

if (place_meeting(x, y + vspd, obj_wall)) {
    while (!place_meeting(x, y + sign(vspd), obj_wall)) {
        y = y + sign(vspd);
    }
    vspd = 0;
    pulos = 0; 
}

y = y + vspd;


if (keyboard_check_pressed(vk_up) && pulos < max_pulos) {
    vspd = -jump;
    pulos = pulos + 1;
	audio_play_sound(snd_jump,4,false)
}

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

#region MUSICA
if (!sound_played) {
    audio_play_sound(snd_intro,1,true)
    sound_played = true;
}
#endregion









