/// @description Init Input

// Keyboard
rightKey = ord("D");
leftKey  = ord("A");
upKey    = ord("W");
downKey  = ord("S");

interactKey = ord("I");
interactKeyDuration = scr_room_seconds(1);
interactKeyCounter = 0;

attackKey	= ord("K");
fireKey		= ord("J");
dashKey     = ord("L");

// Gamepad
device_num = 0;
deadzone   = 0.5;
gm_horizontalAxis = gp_axislh;
gm_verticalAxis   = gp_axislv;
gm_interactKey    = gp_face4;
gm_dashKey        = gp_face1;
gm_attackKey	  = gp_face2;
gm_fireKey		  = gp_face3;
offset_x = 0;
offset_y = 0;
gm_horizontalPointerAxis = gp_axisrh;
gm_verticalPointerAxis   = gp_axisrv;
pointer_xInput = 0;
pointer_yInput = 0;

// Initial default values
interactInput = false;
isInteracting = false;
horizontalInput = 0;
verticalInput = 0;
attackInput = false;
fireInput = false;
dashInput = false;