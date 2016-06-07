module mutter(m){
  difference(){
    if(m==10){$r=0.936; $h=0.84;}
    cylinder($fn=6,r=$r,h=$h);
    cylinder($fn=12, r=(m/20), h=1);
  }
}
