 
 
//Emit Start
emit_start = true;
 
//Particle System

global.particle_system = part_system_create_layer("Instances", true)
global.particle = part_type_create();

part_type_shape(global.particle, pt_shape_square);
part_type_size(global.particle, 0.01, 0.01, 0, 0);
part_type_color1(global.particle, c_white)
part_type_alpha1(global.particle, 1);
part_type_speed(global.particle, 0.1, 0.1, 0, 0);
part_type_direction(global.particle, 0, 0, 0, 16);
part_type_blend(global.particle, true);
part_type_life(global.particle, 4000, 4000);


//Particle Emitter System
global.particle_system = part_system_create_layer("Instances", true)
global.emitter = part_emitter_create(global.particle_system);
