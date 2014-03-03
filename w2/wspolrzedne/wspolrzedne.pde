
int x;
int y;

PFont czcionka = createFont("Arial",16,true);

void setup(){
  size(600,400);
  
  loop();
  
  smooth();
  
  background(0);
   
  cursor(CROSS);
}

void draw(){
  background(0);
  
  set(mouseX,mouseY,color(255,0,0));
  
  textFont(czcionka,16);
  fill(255);
  text("X="+mouseX+" Y="+mouseY,400,50);
}
