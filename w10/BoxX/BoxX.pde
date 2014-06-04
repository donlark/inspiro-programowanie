void setup()  {
  size(600, 600, P3D);

}

void draw()  {
  background(255);
  stroke(0);
  noFill();
  
  translate(width/2, height/2);

  rotateX(map(mouseY,0,600,radians(-180),radians(180)));
  
  box(150); 
}
