void setup(){
  size(600,600);
  noStroke();
  background(255);
}

void draw(){
//  scale(3);
  stroke(255,50,0);
 // int s=10;
  beginShape();
  vertex(0,180);
  vertex(41,180);
  vertex(41,82);
  vertex(0,82);
  endShape(CLOSE);
  
  beginShape();
  vertex(10,82);
  vertex(31,82);
  vertex(31,40);
  vertex(10,40);
  endShape(CLOSE);
  
   beginShape();
  vertex(20,12);
  vertex(20,40);
  endShape(CLOSE);
  
  
for(int k=0; k<6; k+=1){
  int x=3+(4+2)*k;
  rect(x,82,4,5);
  
for(int i=0; i<14; i+=1){
 int y=82+(5+2)*i;
   rect(3,y,4,5);
}}

for(int i=0; i<14; i+=1){
 int y=82+(5+2)*i;
   rect(9,y,4,5);
}

for(int i=0; i<14; i+=1){
 int y=82+(5+2)*i;
   rect(15,y,4,5);
}

for(int i=0; i<14; i+=1){
 int y=82+(5+2)*i;
   rect(21,y,4,5);
}
for(int i=0; i<14; i+=1){
 int y=82+(5+2)*i;
   rect(27,y,4,5);
}
for(int i=0; i<14; i+=1){
 int y=82+(5+2)*i;
   rect(33,y,4,5);
}



  
}
