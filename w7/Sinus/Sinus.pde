void setup(){
  size(600,300);
  background(128);
 
  stroke(0,0,128);
  strokeWeight(4);
  for(int x=0; x < 600; x=x+1){
    // skalujemy współrzędne ekranu x na współrzędne funkcji xx
    float xx = map(x,0,600,0.0,20.0);
    float yy = sin(xx);
    // skalujemy spowrotem współrzędne funkcji yy na współrzędne ekranu y
    int y=(int)map(yy,-2.0,2.0,0,300);
    point(x,y);
 }
 
}


