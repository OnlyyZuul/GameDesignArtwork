onBlock = place_meeting(x,y+vspeed,objBlock)

if(onBlock){
	gravity = 0
	if(keyboard_check_pressed(ord("W"))){
		vspeed = -jumpSpeed
	}
	else {
		vspeed = 0
	}
} else {
	gravity = playerGravity
}

if((instance_place(x,y+1,objBlockPhase) and keyboard_check_pressed(ord("S"))) or phasing){
	phasing = true
	vspeed = phaseSpeed
}

if(phasing and !place_meeting(x,y,objBlock)){
	phasing = false
}

if(keyboard_check(ord("A"))){
	hspeed = max(hspeed - acceleration, -topSpeed)
} else if(keyboard_check(ord("D"))){
	hspeed = min(hspeed + acceleration, topSpeed)
} else {
	hspeed = hspeed - Polarity(hspeed)
}

if(mouse_x < x){
	dirFacing = facing.left
	image_xscale = -1
} else {
	dirFacing = facing.right
	image_xscale = 1
}	

if(place_meeting(x + hspeed + (Polarity(hspeed) * 1), y + vspeed - 1 + (Polarity(vspeed)), objBlock) && !phasing){
	hspeed = 0
	if(onBlock or place_meeting(x + hspeed + (Polarity(hspeed) * 1), y + vspeed - 1 + (Polarity(vspeed)), objBlock)){ 
		/*
			it's different the second time since we changed hspeed
			essentially checking if we're on a block or still going to collide with one
			prevents "gripping" walls during fall
		*/
		vspeed = 0
	}
}

if(hspeed == 0 or !onBlock){
	sprite_index = sprPlayer
} else {
	sprite_index = sprPlayerWalking
}