
switch(kind) {
    case(transition.stripe_hor):{

        draw_set_color(c_black);
 
        for (var i = stripes; i > 0; i--) {
            draw_rectangle(stripe_one[i], length[i], stripe_one[i] + width, length[i] - height, false);
            draw_rectangle(stripe_two[i], length[i], stripe_two[i] - width, length[i] - height, false);
        }
    };break;
    case(transition.stripe_ver):{

        draw_set_color(c_black); 
     
        for (var i = stripes; i > 0; i--) {
            draw_rectangle(length[i], stripe_one[i], length[i] - height, stripe_one[i] + width, false);
            draw_rectangle(length[i], stripe_two[i], length[i] - height, stripe_two[i] - width, false);
        }
    };break;
}



