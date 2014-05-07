int px;
int py;

void setup(){
  size(300,300);
  background(128);
 
  stroke(0);
  for(int x=0; x < 300; x=x+30){
    float xx=map(x,0,300,0.0,1.0);
    float yy=parabola(xx);
    int y=(int)map(yy,0,1.0,0,300);
    stroke(0);
    strokeWeight(1);
    line(px,py,x,y);
    stroke(color(255,0,0));
    strokeWeight(10);   
    point(x,y);
    px=x;
    py=y;
 }
 
}

float parabola(float x){
   float y= x*x;
   return y; 
}
