void setup(){
  size(600, 600); 
  background(255);
}

void draw(){
  noFill();

  // wypelnij kolorem caly budynek
  fill(200,200,200);
  
  // rysuj czarna kreska
  stroke(0);
  
  // rysuj palac kultury w skali 1:500 (500 milimetrow w rzeczywistosci to 1 milimetr lub piksel na ekranie)
  rect(229,40,2,100); // 50m antena
  rect(200,140,60,100); //50m nadbudowka
  rect(180,240,100,260); // 130mx50m budynek z oknami
  line(0,500,600,500); // chodnik
  
  // rysuj okna
  for(int c = 0; c < 5; c+=1){
    // pozycja okna, kolumna - c 
    int x = (180+8) + (10+8) * c;

    for(int w = 0; w < 8; w+=1){
       // pozycja okna wiersz - w
       int y = (240+11) + (20+11) * w;
       
       // rysuj okno w pozycji x,y kolorem zaleznym od pozycji
       fill(100,c*50,w*30);
       rect(x,y,10,20);
    }
  }
  
}
