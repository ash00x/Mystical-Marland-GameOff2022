/// @description update camera

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//update object position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//keep camera inside room
x = clamp(x, viewWidthHalf, room_width-viewWidthHalf);
x = clamp(y, viewHeightHalf, room_height-viewHeightHalf);

//screenshake
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeRemain) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidthHalf,	y - viewHeightHalf);
