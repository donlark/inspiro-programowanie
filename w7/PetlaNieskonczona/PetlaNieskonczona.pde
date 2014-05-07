int px;
int py;

void setup(){
  size(800,800);
  background(128);
 
  translate(400,400);
  
  for(int r=0; ; r=r+1){
    rotate(radians(5));
    strokeWeight(5);
    point(r,0);
    println(r);
    
    if(r > 1000){
      println("No dobra, to juz koniec");
      break; 
    }
  }
 
}

