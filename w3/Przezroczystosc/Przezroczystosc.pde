
PImage image;
int transparency=128;

void setup(){
   size(400,400);
   background(128); 
   smooth();
   image = loadImage("PT_anim0000.gif");
}

void draw(){
  background(128); 
  
  image(image, 50, 50);
  
  noStroke();
  fill(255,0,0,transparency);
  rect(mouseX,mouseY,150,150);
}

void keyPressed() {
  if(key=='t'){
transparency=crop(transparency-1);
  }
  if(key=='T'){
transparency=crop(transparency+1);
  }
  println("Transparency="+transparency);
}

int crop(int v){
   if(v<0){
    return 0;
   }
    if(v>255){
     return 255;
    } 
    return v;
}

