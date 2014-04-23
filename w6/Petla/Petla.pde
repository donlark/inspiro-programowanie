
void setup(){
  size(600,400);
  
  for(int i=0; i < 600; i+=60){
     int odcien=(int)map(i,0,600,255,0);
     
     println(i+" "+ odcien);
     fill(odcien, 0, 0);
     rect(i,0,60,400); 
  }
}




