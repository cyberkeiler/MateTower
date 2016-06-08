include <arc.scad>;
 //Dokumentations Bild
/*translate([50,0])
Fuehrungsplatte3D(44.4,70,d=19.5,r=3.5,n=4,t=1.2);
Fuehrungsplatte3D(44.4,70,d=19.5,r=1.75,n=4, t=1.2);
/* */

//Erstellt den Zuschnitt der Fuehrungsplatte
// w: Breite der Platte
// h: Höhe der Platte
// r: Radius der Führungsschiene
// d: Abstand der Trommeln
// t: Plattenstärke
module Fuehrungsplatte3D(w,h,r,d,t,n){
  color("Purple")
  linear_extrude(height = t, center = true, convexity = 10, twist = 0)
  Fuehrungsplatte(w,h,r,d,n);
}

//Erstellt den Zuschnitt der Fuehrungsplatte
// w: Breite der Platte
// h: Höhe der Platte
// r: Radius der Führungsschiene
// d: Abstand der Trommeln
module Fuehrungsplatte(w,h,r,d,n){
  difference(){
      square([w,h]);
      for (i = [0:(n-1)]) {
          translate([w/2,h-d*(n-1.5-i)]){
            rotate([0,i*180])
            nut_arc(180,d/2,r);
            //Bohrloch M12
            circle(r=0.6);
          }
      }
  }
}
