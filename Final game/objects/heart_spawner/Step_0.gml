spawn_timer++;

if (spawn_timer >= spawn_delay)
{
    spawn_timer = 0;

    // NEW random delay AFTER each spawn (THIS IS IMPORTANT)
    spawn_delay = irandom_range(240, 300); 
    // 240 = 4 seconds (at 60 FPS)

    var spawn_x = irandom_range(0, room_width);

    instance_create_layer(
        spawn_x,
        -50,
        "Instances_1",
        Object3
    );
}