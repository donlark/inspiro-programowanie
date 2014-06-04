void setup()  {
  size(600, 600, P3D);
}

void draw()  {
  background(0);
  noStroke();
  fill(255);
  
  pointLight(0,255,255,300,300,400);
  
  translate(width/2, height/2, 0);
  rotateX(map(mouseY,0,600,radians(180),radians(-180)));
  rotateY(map(mouseX,0,600,radians(-180),radians(180)));
  
  beginShape();
  vertex(-100, -100, 0);
  vertex( 100, -100, 0);
  vertex( 100,  100, 0);
  vertex(-100,  100, 0);
  endShape(CLOSE);
}


