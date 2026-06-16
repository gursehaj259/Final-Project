// MOVEMENT
if (keyboard_check(vk_left))  x -= move_speed;
if (keyboard_check(vk_right)) x += move_speed;
if (keyboard_check(vk_up))    y -= move_speed;
if (keyboard_check(vk_down))  y += move_speed;

// KEEP IN ROOM
x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height/2, room_height - sprite_height/2);
// SCORE
global.score += 0.1;

// ROOM CHANGE
if (global.score >= 40)
{
    room_goto(Room2);
}

// SHOOT COOLDOWN
shoot_delay--;

// SHOOT
if (keyboard_check_pressed(vk_space) && shoot_delay <= 0)
{
    audio_play_sound(bullet, 5, false);

    instance_create_layer(x - 4, y - 20, "Instances_1", obj_bullet);

    shoot_delay = 10;
}
if (global.score >= 40)
{
    room_goto_next();
}