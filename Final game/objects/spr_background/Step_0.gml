bg_y1 += bg_speed;
bg_y2 += bg_speed;

// Reset backgrounds
if (bg_y1 >= room_height)
{
    bg_y1 = bg_y2 - room_height;
}

if (bg_y2 >= room_height)
{
    bg_y2 = bg_y1 - room_height;
}








