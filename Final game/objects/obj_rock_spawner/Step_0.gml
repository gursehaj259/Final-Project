
spawn_timer++;

if (spawn_timer >= spawn_delay)
{
    spawn_timer = 0;

    var xx = irandom(room_width);

var rock = instance_create_layer(xx, irandom_range(room_height, room_height-50), "Instances", obj_explosion_rock);
rock.speed = irandom_range(6, 10);
rock.direction = 90;
}





