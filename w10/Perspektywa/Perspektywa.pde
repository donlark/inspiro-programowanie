void setup()  {
  size(600, 600, P3D);
}

void draw()  {
  background(255);
  stroke(0);
  fill(255,255,0);

  if(mousePressed) {
    float fov = PI/3.0; 
    float cameraZ = (height/2.0) / tan(fov/2.0); 
    perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 
  } else {
    ortho(0, width, 0, height); 
  }
  translate(width/2, height/2, 0);
  rotateX(map(mouseY,0,600,radians(180),radians(-180)));
  rotateY(map(mouseX,0,600,radians(-180),radians(180)));
  box(160); 
}
