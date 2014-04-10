
PImage img;

void setup(){
  size(1000, 542);
  img = loadImage("impresjonizm.jpg"); 
  //image(img, 0, 0);
  imageMode(CENTER);
  noStroke();
  background(255);
  frameRate(100);
}

void draw(){
  int r = 8;
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pixelColor = img.get(x, y);
  fill(pixelColor, 128);
  ellipse(x, y, r, r); 
}


