if(objPlayer.image_xscale == -1){
	image_yscale = -1
} else {
	image_yscale = 1
}

image_angle = point_direction(x,y,mouse_x,mouse_y)

if(objPlayer.dirFacing == facing.left and not (image_angle >= 90 and image_angle <= 270)){
	image_angle = 180
} else if (objPlayer.dirFacing == facing.right and not 
	((image_angle >= 0 and image_angle <= 90) or (image_angle >= 270 and image_angle <= 360))){
	image_angle = 0
}

x = objPlayer.x
y = objPlayer.y
direction = objPlayer.direction
speed = objPlayer.speed