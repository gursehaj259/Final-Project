// Move Left
if (keyboard_check(vk_left))
{
    x -= move_speed;
}

// Move Right
if (keyboard_check(vk_right))
{
    x += move_speed;
}

// Move Up
if (keyboard_check(vk_up))
{
    y -= move_speed;
}

// Move Down
if (keyboard_check(vk_down))
{
    y += move_speed;
}
// KEEP PLANE INSIDE ROOM
x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);








