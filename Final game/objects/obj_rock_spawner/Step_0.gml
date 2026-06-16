
spawn_timer++;

if (spawn_timer >= spawn_delay)
{
    spawn_timer = 0;
    spawn_delay = irandom_range(25, 60);

    var xx = irandom(room_width);

    var rock = instance_create_layer(xx, -50, "Instances", obj_explosion_rock);
    rock.speed = irandom_range(6, 10);
    rock.direction = 270;
}





