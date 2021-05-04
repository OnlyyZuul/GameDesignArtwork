instance_destroy(other)

enemyHealth -= bulletDamage * other.damageMultiplier

if(enemyHealth <= 0){
	instance_destroy()
}