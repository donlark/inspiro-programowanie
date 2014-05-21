
PVector myszPoprzednia;
float czas=0.25;

void setup(){
   size(600,600);
   myszPoprzednia=new PVector(mouseX,mouseY);
   frameRate(30);
}

void draw(){
   background(255);
   stroke(0);
   strokeWeight(2);
   fill(0);
   
   PVector mysz=new PVector(mouseX,mouseY);
  
   // wektor predkosci
   PVector predkosc = PVector.div(PVector.sub(mysz,myszPoprzednia),czas);
   
   line(mysz.x,mysz.y,mysz.x+predkosc.x,mysz.y+predkosc.y); 
   ellipse(mysz.x+predkosc.x,mysz.y+predkosc.y,10,10);

   // zapisujemy pozycje myszy na potem
   myszPoprzednia = mysz;
}


