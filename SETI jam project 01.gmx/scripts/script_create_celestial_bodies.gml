var celestial_bodies;
var stars;
var planets;
var asteroids;
var moons;

if (grid_index = 1) {
    stars = 0;
    planets = 0;
    asteroids = 0;
    moons = 0;
    celestial_bodies = 0;
    }

if (grid_index > 1) {
    stars = irandom(2);
    if stars > 0 {
        planets = irandom(10);
        }
    if stars = 0 {
        planets = irandom(1);
        }
    asteroids = irandom(20);
    moons = planets*(irandom(10)+1);
    celestial_bodies = stars + planets + asteroids + moons;
    }    

grid_info[myindex, 0] = stars;
grid_info[myindex, 1] = planets;
grid_info[myindex, 2] = asteroids;
grid_info[myindex, 3] = moons;
grid_info[myindex, 4] = celestial_bodies;

if stars > 0 {
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

