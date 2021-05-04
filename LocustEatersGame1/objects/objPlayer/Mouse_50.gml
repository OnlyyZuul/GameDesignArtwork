if((fireMode == fireModes.semi and semiCanShoot) or (fireMode != fireModes.semi and fullCanShoot)){
	instance_create_layer(x + (20 * Polarity(image_xscale)),y,"Instances",objBullet)
	semiCanShoot = false
	fullCanShoot = false
	
	switch(fireMode){
	case fireModes.semi:
		alarm[0] = semiDelay
		break
	case fireModes.fullSlow:
		alarm[0] = fullSlowDelay
		break
	case fireModes.fullFast:
		alarm[0] = fullFastDelay
		break
	case fireModes.fullUltra:
		alarm[0] = fullUltraDelay
		break
	}
}