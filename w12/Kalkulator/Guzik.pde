class Guzik{
   int x;
   int y;
   int w;
   int h;
   String tekst;
   
   Guzik(int x, int y, int w, int h, String tekst){
     this.x=x;
     this.y=y;
     this.w=w;
     this.h=h;
     this.tekst=tekst;  
   } 
   
   void rysuj(boolean nacisniety){
      color fc=g.fillColor;
      if(nacisniety){
        fill(fc,128);
      }
      rect(x,y,w,h);
      fill(0);
      text(tekst,x+20, y+h-20);
      fill(fc); 
   }
   
   boolean nacisniety(int mx, int my){
      if(x<=mx && mx<=x+w && y<=my && my<=y+h){
         return true; 
      }
      else{
        return false;
      } 
   }
}
