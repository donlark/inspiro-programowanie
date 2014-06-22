import processing.net.*;

Server s;
Client c;

void setup() 
{
  size(600, 600);
  background(204);
  stroke(0);
  s = new Server(this, 12345); // Start a simple server on a port
}

void draw() 
{
  if (mousePressed == true) {
    // Wysylamy wspolrzedna klikniecia
    int sx = mouseX/200;
    int sy = mouseY/200;
    println("serwer "+sx + "," + sy);
    s.write(sx + "," + sy + "\n");
    rysujKrzyzyk(sx,sy);
  }
  // Odbieramy wspolrzedne
  c = s.available();
  if (c != null) {
    String tekst = c.readString();
    String linia = tekst.substring(0, tekst.indexOf("\n")); 
    int[] dane = int(split(linia, ",")); // Split values into an array
    int cx=dane[0];
    int cy=dane[1];
    rysujKolko(cx,cy);
  }
}

void rysujKrzyzyk(int sx, int sy){
    noStroke();
    fill(0,0,255);
    rect(sx*200,sy*200,200,200);
    stroke(255,255,255);
    line(sx*200,sy*200,200+sx*200,200+sy*200);
    line(200+sx*200,sy*200,sx*200,200+sy*200);
}

void rysujKolko(int cx, int cy){
    noStroke();
    fill(255,0,0);
    rect(cx*200,cy*200,200,200);
    stroke(255,255,255);
    noFill();
    ellipse(100+cx*200,100+cy*200,200,200);
}
