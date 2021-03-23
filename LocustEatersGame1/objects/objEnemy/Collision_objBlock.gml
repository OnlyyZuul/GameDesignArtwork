vspeed = 0
gravity = 0

if(place_meeting(x + hspeed, y, objBlock) or place_meeting(x - hspeed, y, objBlock)){
	hspeed = hspeed * -1
}