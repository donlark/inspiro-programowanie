
int x;
int y;
int szerokosc;
int wysokosc;
boolean rysowanie;

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
  
  if(rysowanie){
     noFill();
     stroke(255,0,0);
     strokeWeight(4);
     rect(x,y,szerokosc,wysokosc); 
  }
  
  textFont(czcionka,16);
  fill(255);
  text("X="+mouseX+" Y="+mouseY,400,50);
  if(rysowanie){
    text("s="+szerokosc+" w="+wysokosc,400,100);    
  }
}

void mousePressed(){
  rysowanie=true;
  x=mouseX;
  y=mouseY;
}

void mouseDragged(){
  if(rysowanie){
     szerokosc=mouseX-x;
     wysokosc=mouseY-y; 
  }
}

void mouseReleased(){
  rysowanie=false;  
}

