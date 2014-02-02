class Grid {
   int nWidth;
   int nHeight;
   int resWidth;
   int resHeight;
   
   ArrayList<Obj> objects=new ArrayList<Obj>();
   
   final PFont FONT = createFont("Arial",16,true);
   
   public Grid(int areaWidth, int areaHeight, int resW, int resH){
      nWidth=areaWidth/resW;
      nHeight=areaHeight/resH;
      resWidth=resW;
      resHeight=resH;
   } 
   
   public void addObject(Obj obj){
     if(0<=obj.x && obj.x < nWidth && 0<=obj.y && obj.y < nHeight){
       objects.add(obj);
     }  
   }
   
   public void addObjects(ArrayList<Obj> anyObjects){
     for(Obj anyObject: anyObjects){
        addObject(anyObject); 
     }
   }
   
   public ArrayList<Obj> collisionWith(Obj target){
      ArrayList<Obj> output=new ArrayList<Obj>();
      for(Obj obj: objects){
        if(obj.collision(target)){
          output.add(obj);
        }
      }
      return output;
   }
   
   public boolean collision(Obj target){
      return collisionWith(target).size()>0; 
   }
   
   public boolean outOfArea(Obj target){
      return !(0<=target.x && target.x<nWidth) || !(0<=target.y && target.y<nHeight); 
   }
   
   public void displayPlaceholder(){
      for(int i=0; i < nWidth; i++){
         for(int j=0; j < nHeight; j++){
            fill((i*10)%255,(j*10)%255,0);
            rect(i*resWidth,j*resHeight,resWidth,resHeight);
         } 
      }
   }
   
   public void display(){
      for(Obj obj: objects){
          displayObj(obj);
      } 
   }
   
   public void displayObj(Drawable drawable){
       drawable.display(drawable.getX()*resWidth,drawable.getY()*resHeight,resWidth,resHeight);
   }
   
   public int fromAreaX(int areaX){
      return areaX/resWidth; 
   }
   
   public int fromAreaY(int areaY){
      return areaY/resHeight; 
   }
   
   public void displayStatus(String msg){
     textFont(FONT,20);
     fill(255);
     text(msg,resWidth,(nHeight-1)*resHeight);
   }
}

