include <zahnräder.scad>
module Barrel(cap, r1, r2){
    rotate([90,0,0]){
        color("orange")
        translate([0,0,-2.5])
        cylinder(h=24, r=0.4);
        linear_extrude(height = 2, center = true, convexity = 10, twist = 0)
        Flaschenplatte(r1, cap);
        translate([0,0,20])
        linear_extrude(height = 2, center = true, convexity = 10, twist = 0)
          Flaschenplatte(r2, cap);
        
        translate([0,0,-1])
        rotate([0,0,2.5])
          zahnrad36();
    }
}
