
color clr=color(0,0,0);

void setup(){
   size(400,400);
   background(128); 
   smooth();
}

void draw(){
   noStroke();
   fill(clr);
   rect(150,100,100,100);
   
   
}

void keyPressed() {
  if(key==' '){
     clr=color(random(255),random(255),random(255));
  }
  
  println("R="+(int)red(clr)+", G="+(int)green(clr)+", B="+(int)blue(clr));
}


