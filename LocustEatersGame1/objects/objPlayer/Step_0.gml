onBlock = place_meeting(x,y+vspeed,objBlock)
lfBlock = place_meeting(x-hspeed,y,objBlock)
rtBlock = place_meeting(x+hspeed,y,objBlock)

if(onBlock){
	gravity = 0
	if(keyboard_check_pressed(ord("W"))){
		vspeed = -20
	}
	else {
		vspeed = 0
	}
} else {
	gravity = 0.75
}

if((instance_place(x,y+1,objBlockPhase) and keyboard_check_pressed(ord("S"))) or phasing){
	phasing = true
	vspeed = 10
}

if(phasing and !instance_place(x,y,objBlock)){
	phasing = false
}

if(keyboard_check(ord("A"))){
	hspeed = max(hspeed - 2, -10)
	if(lfBlock and !onBlock){
		hspeed = 0
	}
	dirFacing = facing.left
	image_xscale = -1
} else if(keyboard_check(ord("D"))){
	hspeed = min(hspeed + 2, 10)
	if(rtBlock and !onBlock){
		hspeed = 0
	}
	dirFacing = facing.right
	image_xscale = 1
} else {
	if(hspeed < 0){
		hspeed += 1
	} else if(hspeed > 0) {
		hspeed -= 1
	}
}

if((rtBlock or lfBlock) and !onBlock){
	hspeed = 0
}