void setup()  {
  size(600, 600, P3D);
}

void draw()  {
  background(255);
  stroke(0);
  fill(255,255,0);
  if(!mousePressed){
    lights();
  }
  translate(width/2, height/2, 0);
  rotateX(map(mouseY,0,600,radians(180),radians(-180)));
  rotateY(map(mouseX,0,600,radians(-180),radians(180)));
  box(160); 
}
