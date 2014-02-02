

class SmoothSnake {
   Obj[] segments;
   Obj snake;
   Fader fader;
   
   public  SmoothSnake(Obj snake, int nSegments){
     this.snake=snake;
     segments=new Obj[nSegments];
     for(int i=0; i < segments.length; i++){
       segments[i]=new Obj(snake.x,snake.y,"X",color(0,0,0));    
     }
     fader=new Fader(nSegments,300);
   }
   
   public void display(int areaX, int areaY, int areaWidth, int areaHeight){
       snake.display(areaX, areaY, areaWidth, areaHeight); 
   }
   
   public int getX(){ return snake.x; }
  
  public int getY(){ return snake.y; }
   
   public boolean collision(Obj other){
       return snake.collision(other);
   }
   
   public void updateMove(){
     fader.restart();
     for(int i=0; i < segments.length-1; i++){
         segments[i].x=segments[i+1].x;
         segments[i].y=segments[i+1].y;
     }
     segments[segments.length-1].x=snake.x;
     segments[segments.length-1].y=snake.y;
   }
   
   public Drawable[] getDrawable(){
     int showSegments=fader.fade();
     forgetOtherSegments(max(1,showSegments));
     recolor(snake.objColor,max(1,showSegments));
     return segments;
   }
   
   private void forgetOtherSegments(int nSegments){
       int n=min(segments.length,nSegments);
       int rem=segments.length-n;
       if(rem>0){
          for(int i=0; i< rem; i++){
             segments[i].x=segments[rem].x;
             segments[i].y=segments[rem].y;
          } 
       }
   }
   
   private void recolor(color base, int nSegments){
     for(int i=0;i<segments.length;i++){
         segments[i].objColor=color(0,0,0);
     }
     int n=min(segments.length,nSegments);
     int rem=segments.length-n;
     for(int i=segments.length-1; i >= rem; i--){
        segments[i].objColor=lerpColor(color(0,0,0),base,float(i+1-rem)/float(n)); 
     }
   }
}
