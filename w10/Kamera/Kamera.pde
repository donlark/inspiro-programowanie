void setup() {
  size(600, 600, P3D);
}

void draw() {
  background(0);
  camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  translate(width/2, height/2, 0);
  stroke(255);
  noFill();
  box(200);
}
