function Polarity(x){
	if(x > 0){
		return 1
	} else if(x < 0) {
		return -1
	}
	
	return 0
}

function RandPosNeg(){
	num = irandom(1)
	if(num = 0){
		return -1
	} else {
		return 1
	}
}

function checkUserLife(){
	if(health <= 0){
		objGame.numLives -= 1
		if(objGame.numLives <= 0){
			game_restart()
		}
		score = max(score - 100,0)
		room_restart()	
	}
}