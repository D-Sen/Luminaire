 
AlphaLevel = clamp(AlphaLevel + (fade * 0.05),0,1);

if (AlphaLevel == 1) {
    room_goto(global.room_going_to);
    fade = -1;
}



if ((AlphaLevel == 0) && (fade == -1)) {
    instance_destroy();
}

draw_set_colour(c_black);
draw_set_alpha(AlphaLevel);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ),0);
draw_set_alpha(1);



