var celestial_bodies;
var stars;
var planets;
var asteroids;
var moons;
var planet_check;

planet_check = 0;

if (grid_index = 1) {
    stars = 0;
    planets = 0;
    asteroids = 0;
    moons = 0;
    celestial_bodies = 0;
    }

if (grid_index > 1) {
    var existStars;
    existStars = irandom(2);
    stars = 0;
    if (existStars = 0) {
        stars = 1;
        }
        if stars > 0 {
        planets = irandom(4)+2;
        }
    if stars = 0 {
        planets = irandom(1);
        }
    asteroids = irandom(4)+2;
    moons = planets*(irandom(4)+2);
    celestial_bodies = stars + planets + asteroids + moons;
    }    

grid_info[myindex, 0] = stars;
grid_info[myindex, 1] = planets;
grid_info[myindex, 2] = asteroids;
grid_info[myindex, 3] = moons;
grid_info[myindex, 4] = celestial_bodies;

var ecosystemCheck;
var lifeCheck;
var intCheck;
var commCheck;
var rarityCheck;
var rarity;

if planets > 0 {
    { do {
        planet_check += 1;
        planet_id += 1;
        ecosystemCheck = irandom(2);
        if (ecosystemCheck == 0) {
        planet_info[planet_id, 0] = 1; // ecosystem
            lifeCheck = irandom(9);
            if (lifeCheck < 5) {
                planet_info[planet_id, 1] = 1; // life
                intCheck = irandom(3);
                if (intCheck == 0) {
                    planet_info[planet_id, 2] = 1; // intelligence
                    commCheck = irandom(3);
                    if (commCheck == 0) {
                        planet_info[planet_id, 3] = 1; // communications
                        }
                    }
                }
            }
        planet_info[planet_id, 4] = grid_index; // index id
        planet_info[planet_id, 5] = irandom(999)+1; // earth masses
        chanceCheck = irandom(2);
        if (chanceCheck == 0) {
            chance = 0.15;
            }
        if (chanceCheck == 1) {
            chance = 0.35;
            }
        if (chanceCheck == 2) {
            chance = 0.5;
            }
        planet_info[planet_id, 6] = chance; // resource chance
        }
    until (planet_check = planets);}
    }

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

