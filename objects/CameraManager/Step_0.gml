/// @description Camera follow
if(follow != noone && instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}


x += (xTo - x) / smoothness;
y += (yTo - y) / smoothness;

// TODO: not quite there
x = clamp(x, camera_get_view_width(camera)/2, room_width - (camera_get_view_width(camera)/2));
y = clamp(y, camera_get_view_height(camera)/2, room_height - (camera_get_view_height(camera)/2));

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);