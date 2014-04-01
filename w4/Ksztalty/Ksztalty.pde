
void setup(){
  size(600, 600); 
  noStroke();
  background(255);

}

void draw(){
  background(51);
  
  translate(mouseX, mouseY);
  
  //scale(2.0);
  rysujLinie();
}

void rysujLinie(){
  stroke(255,30,30);
  
  beginShape();
  vertex(0,0);
  vertex(50,50);
  endShape();
}

void rysujTrojkat(){
  stroke(255);
  fill(0,128,255);
  
  beginShape();
  vertex(0,100);
  vertex(100,100);
  vertex(50,0);
  endShape(CLOSE);
}

void rysujKwadrat(){
  stroke(255);
  fill(128,0,255);
  
  beginShape();
  vertex(0,0);
  vertex(0,100);
  vertex(100,100);
  vertex(100,0);
  endShape(CLOSE);
}

void rysujGwiazdke(){
  stroke(255);
  fill(0,255,50);
  
  beginShape();
  vertex(50, 0);
  vertex(64, 30);
  vertex(97, 35);
  vertex(73, 57);
  vertex(79, 90);
  vertex(50, 75);
  vertex(21, 90);
  vertex(27, 57);
  vertex(3, 35);
  vertex(36, 30);
  endShape(CLOSE);
}




