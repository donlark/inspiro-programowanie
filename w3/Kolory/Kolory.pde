
int red=255;
int green=255;
int blue=255;

void setup(){
   size(400,400);
   background(128); 
   smooth();
}

void draw(){
   noStroke();
   fill(red,0,0);
   rect(150,100,100,100);
   
   fill(0,green,0);
   rect(50,200,100,100);
   
   fill(0,0,blue);
   rect(250,200,100,100);
   
   fill(red,green,blue);
   rect(150,200,100,100);
}

void keyPressed() {
  if(key=='r'){
     red=crop(red-1); 
  }
  if(key=='R'){
     red=crop(red+1); 
  }
  if(key=='g'){
     green=crop(green-1); 
  }
  if(key=='G'){
     green=crop(green+1); 
  }
  if(key=='b'){
     blue=crop(blue-1); 
  }
  if(key=='B'){
     blue=crop(blue+1); 
  }
  println("R="+red+", G="+green+", B="+blue);
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

