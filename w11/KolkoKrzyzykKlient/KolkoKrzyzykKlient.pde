import processing.net.*;

Client c;

void setup() 
{
  size(600, 600);
  background(204);
  stroke(0);
  // Connect to the server's IP address and port
  c = new Client(this, "127.0.0.1", 12345); // Replace with your server's IP and port
}

void draw() 
{
  if (mousePressed == true) {
    // Wysylamy wspolrzedna klikniecia
    int cx = mouseX/200;
    int cy = mouseY/200;
    println("klient "+cx + "," + cy);
    c.write(cx + "," + cy + "\n");
    rysujKolko(cx,cy);
  }
  // Odbieramy wspolrzedne
  if (c.available() > 0) {
    String tekst = c.readString();
    String linia = tekst.substring(0, tekst.indexOf("\n")); 
    int[] dane = int(split(linia, ",")); // Split values into an array
    int sx=dane[0];
    int sy=dane[1];
    rysujKrzyzyk(sx,sy);
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
