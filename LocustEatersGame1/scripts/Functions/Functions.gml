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