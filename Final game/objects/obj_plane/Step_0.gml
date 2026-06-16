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


global.score += 0.1;
if (global.score >= 40)
{
    room_goto(Room2);
}

shoot_delay--;

if (keyboard_check_pressed(vk_space) && shoot_delay <= 0)
{
	
    instance_create_layer(x, y - 20, "Instances", obj_bullet);
    shoot_delay = 10;
}
if (mouse_check_button_pressed(mb_left))
{
audio_play_sound(bullet, 5, false);
    var fire;

    if (image_xscale > 0)
    {
        fire = instance_create_layer(x-375, y-225, "Instances", obj_bullet);
        fire.direction = 0;
    }
    else
    {
        fire = instance_create_layer(x-375, y-225, "Instances", obj_bullet);
        fire.direction = 180;
    }

    fire.speed = 8;
}