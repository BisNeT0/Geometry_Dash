function aumentar_velocidade(){
	if(global.timer<0){
		obj_obstacle.hspeed -=0.5
		global.timer -=3
	}else{
		obj_obstacle.hspeed -=0.5
	}

}