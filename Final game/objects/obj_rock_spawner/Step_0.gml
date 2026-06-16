spawn_timer++;

if (spawn_timer >= spawn_delay)
{
    spawn_timer = 0;

    // random x position at top
    var xx = irandom_range(0, room_width);

    instance_create_layer(xx, -50, "Instances", obj_explosion_rock);
}
spawn_timer += 4; // acts like movement distance

if (spawn_timer >= 200) // adjust for spacing
{
    spawn_timer = 0;

    var xx = irandom_range(0, room_width);
    instance_create_layer(xx, -50, "Instances", obj_explosion_rock);
}



