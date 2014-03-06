
void setup(){
  size(600,600);

  noLoop();

  smooth();

  background(192);
  
}

void draw(){
  stroke(0);
  fill(0);
  ellipse(100,100,100,50);
  
  stroke(0);
  fill(255);
  ellipseMode(CENTER);
  ellipse(300,300,80,80);
  
  noFill();
  ellipse(300,300,150,150);
}

