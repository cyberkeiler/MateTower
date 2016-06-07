module nut_arc(_deg,_r,_r2){
    union(){
        intersection(){
            difference(){
                circle(r=_r+_r2);
                circle(r=_r-_r2);
            }
            tortenpeace(_deg,_r*2);
        }
        translate([0,_r])
        circle(r=_r2);
        translate([_r*sin(_deg),_r*cos(_deg)])
        circle(r=_r2);
    }
}


module tortenpeace(_deg,_r){
    polygon(
  points=[ [0,0],
    [_r*sin(0), _r*cos(0)],
    [_r*sin(1*_deg/4), _r*cos(1*_deg/4)],
    [_r*sin(2*_deg/4), _r*cos(2*_deg/4)],
    [_r*sin(3*_deg/4), _r*cos(3*_deg/4)],
    [_r*sin(_deg), _r*cos(_deg)]
    ], paths = [[0,1,2,3,4,5]]
 );
}
