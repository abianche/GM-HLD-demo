/// @description Initialize

/** PLAYER STATS */
maxRunSpeed = PlayerStatsManager._maxRunSpeed;
hp = PlayerStatsManager._health;
ammo = PlayerStatsManager._ammo;

alarm[3] = scr_room_seconds(5);

/** MOVEMENT */
hspd = 0;
vspd = 0;

/** SKILLS */
skill_dash_mul = 4;
skill_dash_avail = true;
skill_dash_cooldown = scr_room_seconds(1.25);
skill_dash_duration = scr_room_seconds(0.25);

skill_atk_avail = true;
skill_atk_cooldown = scr_room_seconds(0.25);
skill_atk_duration = scr_room_seconds(0.10);
skill_atk_attacked = false;

skill_fire_avail = true;
skill_fire_cooldown = scr_room_seconds(0.85);
skill_fire_duration = scr_room_seconds(0.10);
skill_fire_attacked = false;

last_sprite_index = noone;
curDialog = noone;

/** STATE MACHINE */
sm = state_machine_create();
state_add(sm, "move", scr_move_state);
state_add(sm, "dash", scr_dash_state);
state_add(sm, "attack", scr_attack_state);
state_add(sm, "fire", scr_fire_state);
state_set(sm, "move");

/** COLLISIONS */
tilemap = layer_tilemap_get_id("Collisions");

enum Face { RIGHT, UP, LEFT, DOWN }
face = Face.RIGHT;

canInteract = false;

flash = 0;