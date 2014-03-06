
void setup(){
  size(660,420);

  noLoop();

  smooth();

  background(255);
  
}

void draw(){
  rzadKwadratow(30,50,30);
  rzadKwadratow(30+50,50,30+20);
  rzadKwadratow(30+100,50,30+40);
  rzadKwadratow(30+150,50,30+20);
  rzadKwadratow(30+200,50,30);
  rzadKwadratow(30+250,50,30+20);
  rzadKwadratow(30+300,50,30+40);
  rzadKwadratow(30+250,50,30+20);
  
  stroke(128);
  line(80,30+50,600-30,30+50);
  line(80,30+100,600-30,30+100);
  line(80,30+150,600-30,30+150);
  line(80,30+200,600-30,30+200);
  line(80,30+250,600-30,30+250);
  line(80,30+300,600-30,30+300);
  
}

void rzadKwadratow(int y, int w, int przesuniecie){
  int x=przesuniecie;
  for(int i=1; i<=11; i=i+1){
    if(i%2==0){
      kwadrat(x,y,w,0);
    }
    else{
      kwadrat(x,y,w,255); 
    }
    x = x + w;
  }  
}

void kwadrat(int x,int y, int w, int kolor){
  stroke(kolor);
  fill(kolor);
  rect(x,y,w,w);
}

