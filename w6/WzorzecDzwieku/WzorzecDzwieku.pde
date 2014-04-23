
import ddf.minim.*;
import ddf.minim.ugens.*;

Minim       minim;
AudioOutput wyjscie;
Oscil       fala;

float amplituda;
float czestotliwosc;

void setup()
{
  size(512, 400, P3D);
  
  minim = new Minim(this);
  
  wyjscie = minim.getLineOut();
  
  fala = new Oscil( 440, 0.5f, Waves.SINE );
  
  fala.patch( wyjscie );

}

void draw()
{
  background(0);
  
  textSize(20);
  fill(255,0,0);
  
  text( "A="+(amplituda*100)+"%   f="+czestotliwosc+" Hz", 50, 50);
   
  stroke(255);
  strokeWeight(1);
  
  translate(0,200);
  
  for(int x = 0; x < 512; x+=1)
  {
    float y=wyjscie.left.get(x);
    point(x,y*100);
  }
 
}

void mouseMoved()
{
  amplituda = map( mouseY, 0, height, 1, 0 );
  fala.setAmplitude( amplituda );
  
  czestotliwosc = map( mouseX, 0, width, 110, 600 );
  fala.setFrequency( czestotliwosc );
}




