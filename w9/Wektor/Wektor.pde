
void setup(){
 size(600,600);
}

void draw(){
   background(255);
   stroke(0);
   strokeWeight(2);
   fill(0);
   
   PVector mysz=new PVector(mouseX,mouseY);
  
   // wektor
   line(0,0,mysz.x,mysz.y); 
   ellipse(mysz.x,mysz.y,10,10);

}


