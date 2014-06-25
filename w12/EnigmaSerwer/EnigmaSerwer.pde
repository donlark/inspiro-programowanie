import processing.net.*;

Server s;
Client c;

String wlasna="";
String otrzymana="";

void setup() 
{
  size(500, 500);
  s = new Server(this, 12345); // Start a simple server on a port
}

void draw() 
{
  background(255);
  
  if (mousePressed == true) {
    // Wysylamy wlasna wiadomosc
    s.write(new String(zakoduj(wlasna.toCharArray())) + "\n");
    
  }
  // Odbieramy wspolrzedne
  c = s.available();
  if (c != null) {
    String tekst = c.readString();
    otrzymana = tekst.substring(0, tekst.indexOf("\n")); 
  }
  
  rysujSwojaWiadomosc();
  rysujOtrzymanaWiadomosc();
}

void rysujSwojaWiadomosc() {
  fill(0,200,0);
  text(wlasna,20,50);
  text(new String(zakoduj(wlasna.toCharArray())),20,150);
}

void rysujOtrzymanaWiadomosc(){
  fill(200,0,0);
  text(otrzymana,20,250);
  text(new String(odkoduj(otrzymana.toCharArray())),20,350);
}

void keyPressed(){
  if(('a'<=key && key<='z')
     ||('A'<=key && key<='Z')
     ||('0'<=key && key <='9')
     ||key==' '||key=='.'||key==','||key=='?'||key=='!' ){
     wlasna+=key; 
  }
}

char[] zakoduj(char[] wiadomosc){
  return wiadomosc;
}

char[] odkoduj(char[] wiadomosc){
   return wiadomosc;
}
