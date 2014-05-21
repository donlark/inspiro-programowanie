
float czas=1.0;
float masa=1.0;
PVector pozycja=new PVector(0,0);
PVector predkosc=new PVector(2.0,2.0);
PVector grawitacja=new PVector(0.0,-0.01);
boolean rzut=false;
String planeta="ziemia";

void setup(){
   size(800,600);
   textSize(20);
}

void draw(){
   background(255);
   stroke(0);
   strokeWeight(2);
   fill(255,0,0);
   
   if(rzut){
      pozycja=PVector.add(pozycja,PVector.mult(predkosc,czas));
      predkosc=PVector.add(predkosc,PVector.mult(grawitacja,czas/masa));
   }
   println(""+pozycja.x+","+pozycja.y);
   
   int x=int(20+pozycja.x);
   int y=int(600-20-pozycja.y);
   ellipse(x,y,10,10);
   line(0,600-20+5,800,600-20+5);
   
   line(x,y,x+predkosc.x*20.0,y-predkosc.y*20.0);
   
   text(planeta, 50, 50);
}

void keyPressed(){
   if(key==' '){
         rzut=false; 
         pozycja=new PVector(0,0);
         predkosc=new PVector(2.0,2.0);
   }
   
   if(!rzut) {
      if(key == ENTER) {
         rzut=true;  
      }
      if(key == 'z'){
         ziemia(); 
      }
      else if(key == 'k'){
         ksiezyc(); 
      }
      
      if (key == CODED) {
         if (keyCode == UP) {
            predkosc=zmienKat(predkosc,radians(5.0));
         } else if (keyCode == DOWN) {
            predkosc=zmienKat(predkosc,-radians(5.0));
         } else if(keyCode == LEFT) {
            predkosc=zmienDlugosc(predkosc,-0.1);
         } else if(keyCode == RIGHT) {
            predkosc=zmienDlugosc(predkosc,0.1);
         } 
      }
   }   
}

void ziemia(){
   planeta="Ziemia";
   grawitacja=new PVector(0.0,-0.01);
}

void ksiezyc(){
   planeta="Ksiezyc";
   grawitacja=new PVector(0.0,-0.01/6.0);
}

PVector zmienKat(PVector predkosc,float zmianaKata){
   float kat=PVector.angleBetween(predkosc,new PVector(1.0,0.0));
   float dlugosc=predkosc.mag();
   PVector kierunek=PVector.fromAngle(kat+zmianaKata);
   return PVector.mult(kierunek,dlugosc); 
}

PVector zmienDlugosc(PVector predkosc, float zmianaDlugosci){
   float dlugosc=predkosc.mag();
   predkosc.setMag(dlugosc+zmianaDlugosci);
   return predkosc;
}

