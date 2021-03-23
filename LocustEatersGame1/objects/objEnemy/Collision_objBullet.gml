instance_destroy(other)

health -= bulletDamage * other.damageMultiplier

if(health <= 0){
	instance_destroy()
	instance_create_layer(x,y,"Instances",objExplosion)
}