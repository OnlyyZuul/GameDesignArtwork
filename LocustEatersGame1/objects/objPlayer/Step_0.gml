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
	gravity = 0.75
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
	dirFacing = facing.left
	image_xscale = -1
} else if(keyboard_check(ord("D"))){
	hspeed = min(hspeed + acceleration, topSpeed)	
	dirFacing = facing.right
	image_xscale = 1
} else {
	hspeed = hspeed - Polarity(hspeed)
}

if(place_meeting(x + hspeed, y + vspeed - 1, objBlock) && !phasing){
	hspeed = 0
	if(onBlock or place_meeting(x + hspeed, y + vspeed - 1, objBlock)){ 
		/*
			it's different the second time since we changed hspeed
			essentially checking if we're on a block or still going to collide with one
			prevents "gripping" walls during fall
		*/
		vspeed = 0
	}
}