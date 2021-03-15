if(canShoot){
	instance_create_layer(x,y,"Instances",objBullet)
	canShoot = false
	alarm[0] = 15
}