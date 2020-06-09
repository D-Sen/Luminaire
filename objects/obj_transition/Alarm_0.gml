x = __view_get( e__VW.XPort, 0 );
y = __view_get( e__VW.YPort, 0 );
stripe_w = window_get_width();
stripe_h = window_get_height();


switch(kind) {
    case (transition.stripe_hor):
        //maxTimer = stripe_w;
        maxTimer = window_get_width();

        for (i = stripes; i > 0; i-=1){
            stripe_one[i] = x - width;
            stripe_two[i] = (x + stripe_w) + width;
            length[i] = i * (stripe_h / stripes);
            stripe_spd[i] = random_range(width / time, width / time + (time / 8));
        }
        ;break;
    case (transition.stripe_ver):
        //height = window_get_height() / stripes;
        //width = window_get_width() + (window_get_width() / 5);
        //timer =  -width;
        //maxTimer = stripe_w;    
        
        width = stripe_h + (stripe_h / 5);
        height = stripe_w / stripes;
        timer = y - width;
        maxTimer = window_get_height();
        
        for (i = stripes; i > 0; i-=1){
           stripe_one[i] = y - width;
           stripe_two[i] = (y + stripe_h) + width;
           length[i] = i * (stripe_w / stripes);
           stripe_spd[i] = random_range(width / time, width / time + (time / 8));
        } 
        ;break;
}

anim = true;

