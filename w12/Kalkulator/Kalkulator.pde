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
   guziki.dodaj(new Guzik(m+2*(s+m),h-2*(s+m),s,s,"3"));
   guziki.dodaj(new Guzik(m,h-3*(s+m),s,s,"4"));
   guziki.dodaj(new Guzik(m+(s+m),h-3*(s+m),s,s,"5"));
   guziki.dodaj(new Guzik(m+2*(s+m),h-3*(s+m),s,s,"6"));
   guziki.dodaj(new Guzik(m,h-4*(s+m),s,s,"7"));
   guziki.dodaj(new Guzik(m+(s+m),h-4*(s+m),s,s,"8"));
   guziki.dodaj(new Guzik(m+2*(s+m),h-4*(s+m),s,s,"9"));
   guziki.dodaj(new Guzik(m+(s+m),h-(s+m),s,s,"C"));
   guziki.dodaj(new Guzik(m+2*(s+m),h-(s+m),s,s,"="));
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
     else if(n==10){
       // C
       liczba="";
       rzymska="";
     }
     else if(n==11){
        // =
        rzymska=zamien(liczba); 
     }
  }
}

String zamien(String liczba){
   String [][] mozliwosci=new String[][]{
     {"0","I","II","III","IV","V","VI","VII","VIII","IX"},
     {"","X","XX","XXX","XL","L","LX","LXX","LXXX","XC"},
     {"","C","CC","CCC","CD","D","DC","DCC","DCCC","M"},
     {"","M","MM","MMM"}
   };
   String rzymskie="";
   for(int i=0; i < liczba.length(); i+=1){
      int cyfra=Integer.parseInt(""+liczba.charAt(i));
      rzymskie+=mozliwosci[liczba.length()-1-i][cyfra];
   } 
   return rzymskie;
}


