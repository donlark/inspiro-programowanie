// kolo: a=1,b=1
// kokardka:a=1,b=2
// a=4,b=2
float a=3;
float b=2;
float c=PI/2.0;


void setup(){
  size(800,800);
  background(128);
 
  stroke(0,0,128);
  strokeWeight(4);
  for(float t=0; t < 600; t=t+0.1){
    float xx = sin(a*t+c);
    float yy = sin(b*t);
    
    int x = (int)map(xx,-1.0,1.0,100,700);
    int y = (int)map(yy,-1.0,1.0,100,700);

    point(x,y);
 }
 
}


