
void setup(){
 size(600,600);
 background(255); 
 
 kwadrat(color(30,140,2),0,0);
 
 kwadrat(color(130,140,2),300,0);

 kwadrat(color(30,40,2),0,300);
 
 kwadrat(color(30,140,102),300,300);

}

void kwadrat(color c, int x, int y){
  fill(c);
  //rect(x,y,300,300);
  ellipse(x+150,y+150,300,300);
}
