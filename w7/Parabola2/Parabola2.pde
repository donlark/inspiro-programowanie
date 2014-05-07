void setup(){
  size(300,300);
  background(128);
 
  stroke(0,0,128);
  strokeWeight(4);
  for(int x=0; x < 300; x=x+1){
    // skalujemy współrzędne ekranu x na współrzędne funkcji xx
    float xx = map(x,0,300,0.0,1.0);
    float yy = parabola(xx);
    // skalujemy spowrotem współrzędne funkcji yy na współrzędne ekranu y
    int y=(int)map(yy,0,1.0,0,300);
    point(x,y);
 }
 
}

float parabola(float x){
   float y = x*x;
   return y; 
}

