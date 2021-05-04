if(keyboard_check_pressed(ord("K"))){
	instance_destroy(objEnemyWalker)
	instance_destroy(objEnemyShooter)
	instance_destroy(objEnemyFlyer)
}

if(keyboard_check_pressed(ord("H"))){
	health += 10
}

if(keyboard_check_pressed(ord("L"))){
	numLives += 1
}

if(keyboard_check_pressed(ord("U"))){
	objPlayer.fireMode = fireModes.fullUltra
}