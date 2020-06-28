/// @description Burst Particles
// You can write your code in this editor


//Create Particles

//part_particles_create(global.particle_system, x, y, global.particle, 2)

//Start Emitting
if (emit_start == true) {
	part_emitter_region(global.particle_system, global.emitter, 0, -room_width, 32, 68, pt_shape_square, ps_distr_invgaussian)
	part_emitter_burst(global.particle_system, global.emitter, global.particle, 15);
	
	part_emitter_region(global.particle_system, global.emitter, 0, room_width, 32, 68, pt_shape_square, ps_distr_invgaussian)
	part_emitter_burst(global.particle_system, global.emitter, global.particle, 15);
	alarm[0] = 1000;
	emit_start = false;
}


if (alarm[0] < 0) {
	alarm[0] = 1000;
}



//Set Timer to Emit Particles
//if (alarm[0] < 0) { alarm[0] = 200 }