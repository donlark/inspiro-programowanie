
void setup(){
  size(600, 600); 
  noStroke();
  background(255);


}

int kat=0;

void draw(){
 stroke(0);
 
 translate(200,100);
 rotate(radians(kat));
 
 beginShape();
 vertex(50,0);
 vertex(50,10);
 endShape();
 
 kat=kat+5;
}
