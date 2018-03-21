/// @description Create the grid

var cell_width  = global.unit;
var cell_height = global.unit;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

// Add the walls
mp_grid_add_instances(global.grid, oWall, false);
mp_grid_add_instances(global.grid, NPC, false);
// mp_grid_add_cell()
