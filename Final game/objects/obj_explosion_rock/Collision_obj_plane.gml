global.lives -= 1;

instance_create_layer(x, y, "Instances", obj_explosion_rock);

instance_destroy();

if (global.lives <= 0)
{

}




