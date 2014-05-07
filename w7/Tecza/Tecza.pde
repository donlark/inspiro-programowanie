void setup(){
  size(300,300);
  background(128);
 
  colorMode(HSB);
  for(int i=0; i < 255; i=i+1){
    stroke(color(i,255,255));
    line(50,i,250,i);
  }
 
}
