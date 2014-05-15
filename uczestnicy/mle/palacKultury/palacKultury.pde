void setup(){
size(500,500);

background(0);

}

void draw(){
  noFill();
stroke(255,0,0);
//scale(2);
int s = 2;
rect(100*s,125*s,27*s,65*s);
rect(107*s,98*s,14*s,29*s);
int b = 0;
int r = 0;

for(int g=0;g<5;g++){
for(int a=0;a<10;a++)
{
  fill(random(100,255),random(100,255),random(100,255));
rect(105*s+r,130*s+b,2*s,4*s);
b =b+10;

}
r=r+7;
b=0;




}



beginShape();
vertex(114*s,98*s);
vertex(114*s,73*s);
endShape();
  
  

}
