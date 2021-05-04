alarm[0] = shootingTimer

if(!collision_line(x,y, objPlayer.x,objPlayer.y,objBlock,false,false)){
	instance_create_layer(x,y,"Instances",objEnemyBullet)
}