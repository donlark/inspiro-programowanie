
PVector p=new PVector(300,300);
float czas=5.0;
PVector predkosc=new PVector(1.0,0.0);

void setup(){
   size(600,600);
   frameRate(30);
}

void draw(){
   background(255);
   
   predkosc=new PVector(random(-1.0,1.0),random(-1.0,1.0));
   p=PVector.add(p,PVector.mult(predkosc,czas));
  
   stroke(0);
   strokeWeight(2);
   fill(0);
   ellipse(p.x,p.y,10,10);

   // predkosc
   line(p.x,p.y,p.x+predkosc.x*50,p.y+predkosc.y*50);
}




