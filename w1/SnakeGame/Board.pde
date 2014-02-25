class Board {
  private int columns;
  private int rows;
  
  private ArrayList<Block> obstacles = new ArrayList<Block>();
  
  public Board(int columns, int rows){
    this.columns = columns;
    this.rows = rows; 
  }
  
  public void addObstacles(ArrayList<Block> obstacles){
    for(Block obstacle: obstacles){
      if( isInsideBoard(obstacle) ){
        this.obstacles.add(obstacle);
      } 
    }
  }
  
  public boolean isInsideBoard(Block block){
    if( 0 <= block.column && block.column < columns){
      if( 0 <= block.row && block.row < rows){
        return true;
      } 
    }
    return false; 
  }
  
  public boolean isColliding(Block block){
    for(Block obstacle: obstacles){
      if( block.isCollidingWith(obstacle) ){
        return true;
      } 
    }
    return false;
  }
  
  public ArrayList<Block> obstacles(){
     return obstacles;
  }
  
}
