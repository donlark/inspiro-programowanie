class Block {
  int column;
  int row;
  String name;
  int id;
  
  public Block(int column, int row, String name){
    this.column = column;
    this.row = row;
    this.name = name;
  } 
  
  public boolean isCollidingWith(Block block){
    if( block.column == column && block.row == row ){
      return true; 
    }
    return false;
  }
}
