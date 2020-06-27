/// @description Insert description here
// You can write your code in this editor
//part_emitter_stream(global.particle_system, global.emitter, global.particle, 0.5);

part_emitter_region(global.particle_system, global.emitter, 0, -room_width, 16, 80, spr_particle, ps_distr_linear)
part_emitter_burst(global.particle_system, global.emitter, global.particle, 25);

