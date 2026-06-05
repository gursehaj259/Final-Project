hp -= 1;

image_index = 1; // cracked frame

with (other) instance_destroy();

if (hp <= 0)
{
    global.score += 1;
    instance_destroy();
}





