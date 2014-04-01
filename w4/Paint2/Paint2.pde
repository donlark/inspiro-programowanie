
color kolor=color(0,0,0);
boolean rysuje = false;

void setup(){
  size(600, 600); 
  noStroke();
  background(255);

  narysujPalete();
}

void draw(){
  
  if(rysuje){
     kropka(mouseX, mouseY, kolor);
  }
   
}

void narysujPalete(){
    fill(losowyKolor());
    ellipse(50,50,50,50);
    
    fill(losowyKolor());
    ellipse(120,50,50,50);
    
    fill(losowyKolor());
    ellipse(190,50,50,50);
    
    fill(losowyKolor());
    ellipse(260,50,50,50);
    
    fill(losowyKolor());
    ellipse(330,50,50,50);
    
    fill(losowyKolor());
    ellipse(400,50,50,50);
}

color losowyKolor(){
  int czerwony = int(random(255));
  int zielony = int(random(255));
  int niebieski = int(random(255));
  return color(czerwony,zielony,niebieski);  
}

void kropka(int x, int y, color kolor){
  fill(kolor);
  
  translate(x, y);
  rotate(radians(45));
  scale(0.2);
  rysujKwadrat();
}

void rysujKwadrat(){
  beginShape();
  vertex(0,0);
  vertex(0,100);
  vertex(100,100);
  vertex(100,0);
  endShape(CLOSE);
}

void mouseClicked() {
  if(mouseButton == RIGHT){
    kolor = get(mouseX,mouseY);
  }
}

void mousePressed(){
  if(mouseButton == LEFT){
    rysuje = true;
  }
}

void mouseReleased(){
  if(mouseButton == LEFT){
    rysuje = false;
  }
} 



