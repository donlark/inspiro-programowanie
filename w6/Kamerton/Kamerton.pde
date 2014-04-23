
import ddf.minim.*;
import ddf.minim.ugens.*;

Minim       minim;
AudioOutput wyjscie;
Oscil       fala;

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
  stroke(255);
  strokeWeight(1);
  
  //translate(0,200);
  
  for(int x = 0; x < 512; x+=1)
  {
    float y=wyjscie.left.get(x);
    //point(x,y*100);
    point(x,y);
  }
  
}





