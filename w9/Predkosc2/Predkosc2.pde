
PVector p=new PVector(0,300);
float czas=0.5;
PVector predkosc=new PVector(1.0,0.0);

void setup(){
   size(600,600);
   frameRate(30);
}

void draw(){
   background(255);
   stroke(0);
   strokeWeight(2);
   fill(0);
   
   p=PVector.add(p,PVector.mult(predkosc,czas));
  
   ellipse(p.x,p.y,10,10);

   // predkosc
   line(p.x,p.y,p.x+predkosc.x*50,p.y+predkosc.y*50);
}

void keyPressed(){
   if(key=='w'){
      predkosc.y-=0.2; 
   }
   else if(key=='z'){
      predkosc.y+=0.2; 
   }
   else if(key=='a'){
      predkosc.x-=0.2;
   }
   else if(key=='s'){
      predkosc.x+=0.2; 
   }
   
   println("Predkosc: ["+predkosc.x+"m/s,"+predkosc.y+"m/s]");
}


