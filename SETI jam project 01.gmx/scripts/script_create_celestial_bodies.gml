var celestial_bodies;
var stars;
var planets;
var asteroids;
var moons;
stars = irandom(2);
planets = irandom(10);
asteroids = irandom(20);
moons = planets*(irandom(10)+1);
celestial_bodies = stars + planets + asteroids + moons;

