class Painter {
  private PFont FONT = createFont("Arial",16,true);
  
  private int blockSizeInPixels;
  private int columns;
  private int rows;
  
  private GlowingEffect glowingEffect;
  
  public Painter(int columns, int rows, int blockSizeInPixels){
    this.columns = columns;
    this.rows = rows;
    this.blockSizeInPixels = blockSizeInPixels;
    println("Painter: "+columns+","+rows+"|"+blockSizeInPixels);
  }
  
  public void displayBoard(Board board){
    for(Block obstacle: board.obstacles()){
      displayBlock( obstacle.column, obstacle.row, chooseColor(obstacle.name)); 
    }
  }
 
  public void displayTarget(Block target){
    displayBlock( target.column, target.row, chooseColor(target.name));
  }
 
  public void displaySnake(Segment snakeSegment, int snakeState){
    String state = "";
    if(snakeState==1){
      state = "S_OK";
    }
    else if(snakeState==2){
      state = "S_COLLISION"; 
    }
    Block[] snakeBocks = snakeSegment.getBlocks();
    for(Block block: snakeBocks){
      displayBlock( block.column, block.row, chooseSnakeColor(state,block.id,snakeBocks.length));
    }
  }
  
  public void displayWinningSnake(Block snake){
    if(glowingEffect == null){
      glowingEffect = new GlowingEffect(300); 
    }
    
    if(glowingEffect.glow()){
      displayGlowingBlock( snake.column, snake.row, chooseColor(snake.name));
    }
    else{
      displayBlock( snake.column, snake.row, chooseColor(snake.name));
    }
  }
 
  public void displayStatus(String msg){
    textFont(FONT,20);
    fill(255);
    int xPositionInPixels = blockSizeInPixels;
    int yPositionInPixels = (rows-1) * blockSizeInPixels; 
    text( msg, xPositionInPixels, yPositionInPixels);
  }
  
  private void displayBlock(int column, int row, color blockColor){
    int xPositionInPixels = column * blockSizeInPixels;
    int yPositionInPixels = row * blockSizeInPixels;
    fill(blockColor);
    rect(xPositionInPixels, yPositionInPixels, blockSizeInPixels, blockSizeInPixels);
  }
  
  private void displayGlowingBlock(int column, int row, color blockColor){
    int xPositionInPixels = column * blockSizeInPixels;
    int yPositionInPixels = row * blockSizeInPixels;
    int border = 5;
    fill(blockColor);
    rect(xPositionInPixels - border, yPositionInPixels - border, blockSizeInPixels + 2*border, blockSizeInPixels + 2*border);
  }
  
  private color chooseColor(String name){
    if("S".equals(name)){
      return color(255,0,0);
    }
    else if("S_OK".equals(name)){
      return color(147,240,34); 
    }
    else if("S_COLLISION".equals(name)){
      return color(250,219,20); 
    }
    else if("T".equals(name)){
      return color(20,108,201);
    }
    else{
      return color(255,255,255); 
    } 
  }
  
  private color chooseSnakeColor(String state, int id, int n){
    color baseColor = chooseColor(state);
    return lerpColor(color(0,0,0),baseColor,float(id)/float(n)); 
  }
}
