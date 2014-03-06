
void setup(){
  size(600,600);

  noLoop();

  smooth();

  background(192);
  
}

void draw(){
  stroke(0);
  strokeWeight(16);
  line(200,100,300,300);
  
  stroke(255);
  strokeWeight(16);
  line(200,100,100,300);
  
  stroke(128);
  strokeWeight(16);
  line(100,300,300,300);
}

