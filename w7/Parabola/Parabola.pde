void setup(){
  size(300,300);
  background(128);
 
  stroke(0);
  strokeWeight(4);
  for(int x=0; x < 300; x=x+1){
    int y=parabola(x);
    point(x,y);
 }
 
}

int parabola(int x){
   int y= x*x;
   return y; 
}

