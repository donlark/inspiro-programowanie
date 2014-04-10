
int wKolku=0;
int wKwadracie=0;
void setup(){
   size(400,400);
   background(255);
   stroke(0,0,255);
   ellipse(200,200,400,400);  
   frameRate(60);
}

void draw(){
  float x=random(400);
  float y=random(400);
  if(jestWKolku(x,y,200)){
    fill(0,255,255);
    wKolku+=1;
    wKwadracie+=1;
  }
  else{
    fill(255,0,255);
    wKwadracie+=1;
  }
  ellipse(x,y,5,5);
  
  println("wKwadracie="+wKwadracie+" pi "+policzPi());
}

boolean jestWKolku(float x, float y, float r){
   float p = sqrt((x-r)*(x-r)+(y-r)*(y-r)); 
   if(p<r){
      return true; 
   }
   else{
      return false; 
   }
}

double policzPi(){
   return ((double)wKolku/(double)wKwadracie)*4.0; 
}
