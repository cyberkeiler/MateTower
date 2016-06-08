$mate_r1 = 3.5;       //radius of bottle Body
$mate_r2 = 1.75;      //radius of bottle neck

$Barrel_r= 9.5;      //radius of one barrel / Trommel
$Barrel_cap = 6;     //amount of bottles per barrel
$Barrel_stages = 3;  //amount of barrels per tower
$Barrel_distance = 19.5;

$Tower_width = 44.4;
$Tower_height = 70;

include <arc.scad>;
include <Barrel.scad>;
include <mutter.scad>;
include <Flaschenplatte.scad>;
include <Fuehrungsplatte.scad>;

for (l = [0:($Barrel_stages-1)]) {
  translate([0,0,19.5*l])
  Barrel($Barrel_cap, $mate_r1, $mate_r2);
}

//Führungsplatte
translate([-$Tower_width/2, 0,-$Tower_height + $Barrel_distance *($Barrel_stages-0.5)])
rotate([90,0,0])
Fuehrungsplatte3D( w=$Tower_width, h=$Tower_height, r=$mate_r1,d=$Barrel_distance,t=2, n=$Barrel_stages+1);

// Zahnrad
rotate([90,0,0])
color("green")
zahnrad6();

//Führungsplatte

translate([-$Tower_width/2,-19.1,-$Tower_height + $Barrel_distance *($Barrel_stages-0.5)])
rotate([90,0,0])
Fuehrungsplatte3D( w=$Tower_width, h=$Tower_height, r=$mate_r2,d=$Barrel_distance,t=2,n=$Barrel_stages+1);
