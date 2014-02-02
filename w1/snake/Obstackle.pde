class Obstackle {
   ArrayList<Obj> obstackles=new ArrayList<Obj>();
   Obj target;
   Obj start;
   
   public Obstackle(int no){
      switch(no){
        case 1:
           obstackles.add(o(8,9));     
           target=t(8,2);
           start=s(8,16);
           break;
        case 2:
           obstackles.add(o(8,9));     
           obstackles.add(o(8,10));
           obstackles.add(o(8,11));
           target=t(8,2);
           start=s(8,16);
           break;
        case 3:
           obstackles.add(o(4,5));     
           obstackles.add(o(5,5));
           obstackles.add(o(6,5));
           
           obstackles.add(o(10,5));     
           obstackles.add(o(11,5));
           obstackles.add(o(12,5));
           
           target=t(6,2);
           start=s(8,15);
           break;
      }  
   }
  
    private Obj o(int x, int y){
       return new Obj(x,y,"O", color((255-x*10)%255,(255-y*10)%255,255));
    } 
    
    private Obj t(int x, int y){
       return new Obj(x,y,"T", color(20,108,201));
    }
    
    private Obj s(int x, int y){
       return new Obj(x,y,"S", color(255,0,0));
    }
    
    public ArrayList<Obj> get(){
      return obstackles;
    }
    
    public Obj getTarget(){
       return target; 
    }
    
    public Obj getStart(){
       return start; 
    }
}
