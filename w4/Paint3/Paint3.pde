
color kolor=color(0,0,0);
boolean rysuje = false;
int numerek=1;

void setup(){
  size(1000, 542); 
  noStroke();
  background(255);

  PImage img = loadImage("impresjonizm.jpg");
  image(img, 0, 0);
  imageMode(CENTER); 
}

void draw(){
  
  if(rysuje){
     kropka(mouseX, mouseY, kolor);
  }
   
}

void kropka(int x, int y, color kolor){
  fill(kolor);
  
  int r=8;
  ellipse(x,y,r,r);
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

void keyPressed(){
   if(key == ' '){
      String plik = "moj_obrazek"+numerek+".jpg";
      save(plik);
      println("Zapisano plik: "+plik);
      
      numerek = numerek + 1;
   } 
}



