var tobe;
tobe = irandom(9);
if tobe < 5 {
    var star_type;
    var star_xpos;
    var star_ypos;
    star_type = irandom(2);
    star_xpos = x+5+(irandom(54));
    star_ypos = y+5+(irandom(54));
    switch star_type {
        case 0: instance_create(star_xpos, star_ypos, obj_star_2x2); break;
        case 1: instance_create(star_xpos, star_ypos, obj_star_4x4); break;
        case 2: instance_create(star_xpos, star_ypos, obj_star_6x6); break;
    }
}
