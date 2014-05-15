void setup(){
  size(1024, 720); 
  noStroke();
  background(255);

}
void draw(){
  
  noFill();
  int a = 2;
  //scale(2,0);
  fill(0,255,0);
  stroke(255,0,0);
  rect(90*a,182*a,54*a,130*a);
  rect((90+13)*a,125*a,27*a,57*a);
  rect(116*a,85*a,1*a,40*a);
  
  for(int c = 0; c < 4;c++){
    int x = 95*a +(25 + 2)*c;

  for(int b = 0; b< 8;b++){
    int y = (190*a) + 15*a *b; 
    fill(random(255),255,0);
    rect(x,y,5*a,10*a);
    
    }
  }
}
