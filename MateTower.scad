$mate_r1 = 3.5;       //radius of bottle Body
$mate_r2 = 2;         //radius of bottle neck
$Barrel_r= 9.5;      //radius of one barrel / Trommel
$Barrel_cap = 6;     //amount of bottles per barrel
$Barrel_stages = 5;  //amount of barrels per tower

include <arc.scad>;
include <Barrel.scad>;
include <Flaschenplatte.scad>;


for (i = [0:($Barrel_stages-1)]) {
  translate([0,0,19*i])
  Barrel($Barrel_cap, $mate_r1, $mate_r2);
}

//Führungsplatte
translate([-15,-1,-20])
rotate([90,0,0])
difference(){
    cube([30,19*$Barrel_stages+10,2]);
    for (i = [0:($Barrel_stages-1)]) {
        translate([15,20+19*i,0])
        rotate([0,0,180*i])
        nut_arc(180,4,9.5,$mate_r1);
    }
}

//Führungsplatte
translate([-15,-17,-20])
rotate([90,0,0])
difference(){
    cube([30,19*$Barrel_stages+10,2]);
    for (i = [0:($Barrel_stages-1)]) {
        translate([15,20+19*i,0])
        rotate([0,0,180*i])
        nut_arc(180,4,9.5,$mate_r2);
    }
}
