class Obj implements Drawable{
   int x;
   int y;
   String type;
   color objColor;
   
   public Obj(int x0, int y0, String typeStr, color clr){
       x=x0;
       y=y0;
       type=typeStr;
       objColor=clr;
   }
   
   public void display(int areaX, int areaY, int areaWidth, int areaHeight){
     fill(objColor);
     rect(areaX, areaY, areaWidth, areaHeight);
   }
   
   public int getX(){ return x; }
  
  public int getY(){ return y; }
   
   public boolean collision(Obj other){
      return x==other.x && y==other.y ;
   }
}
