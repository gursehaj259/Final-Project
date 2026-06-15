if (irandom(1) == 0)
{
    instance_create_layer(irandom(room_width), -50, "Instances", obj_rock2);
}
else
{
    instance_create_layer(irandom(room_width), -50, "Instances", Object14);
}
    
alarm[0] = irandom_range(60, 180);