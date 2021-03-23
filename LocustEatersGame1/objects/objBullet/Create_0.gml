direction = point_direction(objPlayer.x, objPlayer.y, mouse_x, mouse_y)

if(objPlayer.dirFacing == facing.left and (direction <= 90 or direction >= 270)){
	instance_destroy()
} else if(objPlayer.dirFacing == facing.right and (direction >= 90 and direction <= 270)){
	instance_destroy()
}

speed = shotSpeed