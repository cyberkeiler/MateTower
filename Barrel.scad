module Barrel(cap, r1, r2){
    rotate([90,0,0]){
        cylinder(h=25, r=0.8);
        linear_extrude(height = 2, center = true, convexity = 10, twist = 0)
        Flaschenplatte(r1, cap);
        translate([0,0,20])
        linear_extrude(height = 2, center = true, convexity = 10, twist = 0)
          Flaschenplatte(r2, cap);
        //translate([0,0,21])
          //cylinder(h=2, r=9.5);
    }
}
