include <arc.scad>;
/* //Dokumentations Bild
translate([50,0])
Fuehrungsplatte(44.4,70,d=19.5,r=3.5,n=4);
Fuehrungsplatte(44.4,70,d=19.5,r=1.75,n=4);
/* */

module Fuehrungsplatte(w,h,r,d){
  difference(){
      square([w,h]);
      for (i = [0:(n-1)]) {
          translate([w/2,70-d*(n-1.5-i)]){
            rotate([0,i*180])
            nut_arc(180,d/2,r);
            //Bohrloch M12
            circle(r=0.6);
          }
      }
  }
}
