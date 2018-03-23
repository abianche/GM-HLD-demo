/// @description Path
event_inherited();
hp = 30;
path = path_add();
maxRunSpeed = 4;

state = scr_enemy_idle_state;
alarm[0] = room_speed * irandom_range(2, 5);
targetx = 0;
targety = 0;
sight = 128;