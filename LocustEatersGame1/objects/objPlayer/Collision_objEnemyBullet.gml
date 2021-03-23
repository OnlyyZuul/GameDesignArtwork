health -= bulletDamage * other.damageMultiplier

instance_destroy(other)

if(health <= 0){
	room_restart()
}