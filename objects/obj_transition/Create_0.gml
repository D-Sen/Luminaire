 //Init
stripes = 100; 
anim = false;
height = window_get_height() / stripes;
width = window_get_width() + (window_get_width() / 5);

timer = -width;
roomChange = false;
maxTimer = window_get_width();

//Arrays
stripe_one[stripes] = 0;
stripe_two[stripes] = 0;
length[stripes] = 0;
stripe_spd[stripes] = 0;

kind = transition.stripe_hor;

alarm[0] = 1;
xx = -1;
yy = -1;

