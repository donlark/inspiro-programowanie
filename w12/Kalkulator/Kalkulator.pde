int m=30;
int s=50;
int w=270;
int h=500;
Guziki guziki=new Guziki(12);
String liczba="";
String rzymska="";

void setup(){
   size(w,h);
   guziki.dodaj(new Guzik(m,h-(s+m),s,s,"0"));
   guziki.dodaj(new Guzik(m,h-2*(s+m),s,s,"1"));
   guziki.dodaj(new Guzik(m+(s+m),h-2*(s+m),s,s,"2"));
}

void draw(){
  background(255);
  fill(128,128,128);
  stroke(0);
  guziki.rysuj();
  
  fill(128,128,128,128);
  rect(m,m,w-2*m,2*s);
  fill(0);
  text(liczba,m+m,m+3*s/4);
  text(rzymska,m+m,m+s+3*s/4);
}

void mousePressed(){
   guziki.nacisnij(mouseX,mouseY); 
   if(guziki.nacisniety()){
     int n=guziki.numerGuzika();
     if(0<=n && n<=9){
       liczba+=n;
     }
  }
}

String zamien(String liczba){
   return liczba;
}


