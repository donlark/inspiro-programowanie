class LevelBuilder {
  ArrayList<Block> obstacles = new ArrayList<Block>();
  Block target;
  Block start;
   
  public LevelBuilder(int level){
    switch(level){
      case 1:
        obstacles.add(o(8,9));     
        
        target=t(8,4);
        start=s(8,16);
        break;
        
      case 2:
        obstacles.add(o(8,9));     
        obstacles.add(o(8,10));
        obstacles.add(o(8,11));
        
        target=t(8,2);
        start=s(8,16);
        break;
        
      case 3:
        obstacles.add(o(4,5));     
        obstacles.add(o(5,5));
        obstacles.add(o(6,5));
           
        obstacles.add(o(10,5));     
        obstacles.add(o(11,5));
        obstacles.add(o(12,5));
           
        target=t(6,2);
        start=s(8,15);
        break;
    }  
  }
  
  private Block o(int col, int row){
    return new Block(col,row,"O");
  } 
    
  private Block t(int col, int row){
    return new Block(col,row,"T");
  }
    
  private Block s(int col, int row){
    return new Block(col,row,"S");
  }
    
}
