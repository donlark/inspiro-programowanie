
import ddf.minim.*;
import ddf.minim.ugens.*;

Minim       minim;
AudioOutput wyjscie;
Oscil       fala1, fala2;

float amplituda1=0.5;
float amplituda2=0.5;
float czestotliwosc1=440.0;
float czestotliwosc2=440.0;
float faza1=0.0;

void setup()
{
  size(512, 800, P3D);
  
  minim = new Minim(this);
  
  wyjscie = minim.getLineOut();
  
  wyjscie.pauseNotes();
  
  fala1 = new Oscil( czestotliwosc1, amplituda1, Waves.SINE );
  
  Oscil fala2 = new Oscil( czestotliwosc2, amplituda2, Waves.SINE );
  
  Summer suma = new Summer();
  
  fala1.patch( suma );
  
  fala2.patch( suma );
  
  suma.patch( wyjscie );

}

void draw()
{
  background(0);
  
  rysujFale( amplituda1, czestotliwosc1, faza1, color(255,0,0),true);
  
  translate(0,200);
  
  rysujFale( amplituda2, czestotliwosc2, 0.0, color(0,255,0),false);
  
  translate(0,200);
  stroke(255);
  strokeWeight(1);
  
  for(int x = 0; x < 512; x+=1)
  {
    int y=(int) map(wyjscie.left.get(x),-1.0,1.0,50,350);
    point(x,y);
  }
}

void rysujFale(float amplituda, float czestotliwosc, float faza, color kolor, boolean wybrana){
  textSize(20);
  fill(kolor);
  text( "A="+(amplituda*100)+"%   C="+czestotliwosc+" Hz   F="+(faza*360)+"^o", 50, 50);
  
  if(wybrana){
      noFill();
      stroke(kolor);
      rect(20,20,450,50);
  }
  
  stroke( kolor );
  strokeWeight(2);
  for( int x = 0; x < width; x+=1 )
  {
      float y = 130+50.0*amplituda*sin( czestotliwosc * (float)x/width/10  );
      point( x+faza*width/10, y );
  }
}

void keyPressed(){
  if(key=='A'){
       amplituda1+=0.1;
       fala1.setAmplitude(amplituda1);
  }
  else if(key=='a'){
       amplituda1-=0.1;
       if(amplituda1<0.0) amplituda1=0.0;
       fala1.setAmplitude(amplituda1);
  }
  
  if(key=='C'){
       czestotliwosc1+=1.0;
       fala1.setFrequency(czestotliwosc1);
  }
  else if(key=='c'){ 
       czestotliwosc1-=1.0;
       fala1.setFrequency(czestotliwosc1);
  }
  
  if(key=='F'){
     faza1+=0.05;
     fala1.setPhase(faza1); 
  }
  else if(key=='f'){
     faza1-=0.05;
     fala1.setPhase(faza1); 
  }
}




