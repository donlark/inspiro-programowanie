void setup(){
  size(300,300);
  background(128);
 
  stroke(0);
  for(int x=0; x < 300; x=x+1){
    int y=funkcja(x);
    point(x,y);
  }
 
}

int funkcja(int x){
   int y = 100;
   return y; 
}
