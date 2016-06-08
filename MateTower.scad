$mate_r1 = 3.5;       //radius of bottle Body
$mate_r2 = 1.75;         //radius of bottle neck
$Barrel_r= 9.5;      //radius of one barrel / Trommel
$Barrel_cap = 6;     //amount of bottles per barrel
$Barrel_stages = 5;  //amount of barrels per tower
$Barrel_distance = 19.5;

include <arc.scad>;
include <Barrel.scad>;
include <mutter.scad>;
include <Flaschenplatte.scad>;
include <Fuehrungsplatte.scad>;

for (l = [0:($Barrel_stages-1)]) {
  translate([0,0,19*l])
  Barrel($Barrel_cap, $mate_r1, $mate_r2);
}

//Führungsplatte
translate([-15,-1,-20])
rotate([90,0,0])
difference(){
    cube([40,$Barrel_distance*$Barrel_stages+10,2]);
    for (i = [0:($Barrel_stages-1)]) {
        translate([15,20+19.5*i,-1])
        rotate([0,0,180+180*i])
        nut_arc(180,4,9.75,$mate_r1);
    }
}
translate([11.5,1,19.5*2])
rotate([90,0,0])
color("green")
zahnrad6();

//Führungsplatte
translate([-15,-17,-20])
rotate([90,0,0])
difference(){
    cube([30,$Barrel_distance*$Barrel_stages+10,2]);
    for (i = [0:($Barrel_stages-1)]) {
        translate([15,20+19.5*i,-1])
        rotate([0,0,180+180*i])
        nut_arc(180,4,9.75,$mate_r2);
    }
}
