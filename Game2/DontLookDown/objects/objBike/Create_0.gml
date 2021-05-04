backTire = instance_create_layer(x - 20, y + 16, "Instances", objRearTire);
physics_joint_revolute_create(id, backTire, backTire.x, backTire.y, 0, 0, 0, 0, 0, 0, false);

frontTire = instance_create_layer(x + 18, y + 16, "Instances", objFrontTire);
physics_joint_revolute_create(id, frontTire, frontTire.x, frontTire.y, 0, 0, 0, 0, 0, 0, false);

hitbox = instance_create_layer(x -2, y - 10, "Instances", objPlayerHitbox);
physics_joint_revolute_create(id, hitbox, hitbox.x, hitbox.y, 0, 0, 0, 0, 0, 0, false);
physics_joint_revolute_create(id, hitbox, hitbox.x, hitbox.y + 10, 0, 0, 0, 0, 0, 0, false);

//rider = instance_create_layer(x, y, "Instances", objRider);
//physics_joint_revolute_create(id, rider, rider.x, rider.y, 0, 0, 0, 0, 0, 0, false);
//physics_joint_revolute_create(id, rider, rider.x + 1, rider.y, 0, 0, 0, 0, 0, 0, false);

if(room == Room2){
	timeline_index = Timeline1
	timeline_running = true
}