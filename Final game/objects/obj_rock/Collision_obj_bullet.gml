hp -= 1;

sprite_index = spr_rock_crack; // cracked sprite

if (hp <= 0)
{
    instance_destroy();
}