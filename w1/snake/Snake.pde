class Snake{
   Grid grid;
   Obj snake;
   Obj target;
   boolean targetReached=false;
   
   final color OK=color(147,240,34);
   final color COLLISION=color(250,219,20);
   
   GlowingObj glowingSnake;
   SmoothSnake smoothSnake;
   int movesCount=0;
   
   public Snake(int areaWidth, int areaHeight, int res){
     grid=new Grid(areaWidth, areaHeight,res,res); 
   }
  
   private void startAt(int x0, int y0){
      snake=new Obj(x0,y0,"snake",OK);
      smoothSnake=new SmoothSnake(snake,5);
   } 
   
   public void obstacles(int no){
     Obstacle o=new Obstacle(no);
      grid.addObjects(o.get());
      target=o.getTarget();
      startAt(o.getStart().x,o.getStart().y);
   }
   
   public boolean move(int xs, int ys){
       reset();
       
       snake.x+=xs;
       snake.y+=ys;
       if(grid.collision(snake) || grid.outOfArea(snake)){
          snake.x-=xs;
          snake.y-=ys;
          snake.objColor=COLLISION; 
          return false;
       }
       smoothSnake.updateMove();
       
       movesCount+=abs(xs)+abs(ys);
       
       if(target.collision(snake)){
          snake.objColor=color(26,255,0);
          targetReached=true;
         return true; 
       }
       return false;
   }
   
   public void reset(){
     snake.objColor=OK;
   }
   
   public void display(){
      grid.display();
      grid.displayObj(target);
      
      if(!targetReached){
        //grid.displayObj(snake);
        for(Drawable d: smoothSnake.getDrawable()){
           grid.displayObj(d); 
        }
      }
     else{
       if(glowingSnake==null){
        glowingSnake=new GlowingObj(snake);
       }
       grid.displayObj(glowingSnake);
     } 
     
     grid.displayStatus("krok "+movesCount);
      
   }
   
   public boolean wonTheGame(){
     return targetReached;
   }
}
