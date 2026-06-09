if (keyboard_check(vk_left))  x -= move_speed;
if (keyboard_check(vk_right)) x += move_speed;
if (keyboard_check(vk_up))    y -= move_speed;
if (keyboard_check(vk_down))  y += move_speed;

// Shoot bullet
if (keyboard_check_pressed(vk_space))
{
    instance_create_layer(x, y - 20, "Instances", obj_bullet);
}

// KEEP PLANE INSIDE ROOM
x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);

// Go to next room when score reaches 40
if (global.score >= 40)
{
    room_goto_next();
}