class GlowingObj implements Drawable{
  Obj objToGlow;
  Blinker blinker;
  
  public GlowingObj(Obj obj){
      objToGlow=obj;
      blinker=new Blinker(2,300);
  }
  
  public void display(int areaX, int areaY, int areaWidth, int areaHeight){
    if(blink()){
      fill(objToGlow. objColor);
      rect(areaX-5, areaY-5, areaWidth+10, areaHeight+10);
    }
    else{
       objToGlow.display(areaX, areaY, areaWidth, areaHeight); 
    }
   }
   
   public int getX(){ return objToGlow.x; }
  
  public int getY(){ return objToGlow.y; }
   
   public boolean collision(Obj other){
       return objToGlow.collision(other);
   }
   
   private boolean blink(){
     return blinker.blink()==1;
  }
}
