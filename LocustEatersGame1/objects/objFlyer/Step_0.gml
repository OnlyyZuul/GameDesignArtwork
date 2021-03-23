if(chasing){
	direction = point_direction(x,y,objPlayer.x,objPlayer.y)
	speed = chaseSpeed
}

image_angle = direction
if(direction >= 90 and direction <= 270){
	image_yscale = -1
} else {
	image_yscale = 1
}


if(distance_to_object(objPlayer) < aggroRange){
	path_end()
	chasing = true
}