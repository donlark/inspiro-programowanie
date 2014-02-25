class GameMaster {
  private Board board;
  private Block snake;
  private Block target;
  
  private boolean targetReached = false;
  
  private final int SNAKE_OK = 1;
  private final int SNAKE_COLLISION = 2;
  private int snakeState = SNAKE_OK;
  
  private int movesCount = 0;
  
  private Painter painter;
  private Segment snakeSegment;
  
  public GameMaster(int widthInPixels, int heightInPixels, int blockSizeInPixels){
    int columns = widthInPixels / blockSizeInPixels;
    int rows = heightInPixels / blockSizeInPixels;
    this.board = new Board( columns, rows);
    this.painter = new Painter( columns, rows, blockSizeInPixels); 
  } 
  
  public void level(int level){
    LevelBuilder levelBuilder = new LevelBuilder(level);
    this.board.addObstacles(levelBuilder.obstacles);
    if( this.board.isInsideBoard(levelBuilder.start) ){
      this.snake = levelBuilder.start;
      this.snakeSegment = new Segment(this.snake, 5);
    }
    if( this.board.isInsideBoard(levelBuilder.target) ){
      this.target = levelBuilder.target;
    }
  }
  
  public void displayBoard(){
    painter.displayBoard(board);
    painter.displayTarget(target);
    if(targetReached){
      painter.displayWinningSnake(snake);
      painter.displayStatus("Wygrales w " + movesCount + " krokach !!!");
    }
    else{
      painter.displaySnake(snakeSegment, snakeState);
      painter.displayStatus("krok " + movesCount);
    }
  }
  
  public boolean isOver(){
    return !board.isInsideBoard(snake) || isFirstPlace(); 
  }
  
  public boolean isFirstPlace(){
    return targetReached; 
  }
  
  public boolean move(int horizontal, int vertical){
    reset();
       
    if(gameMaster.isOver()){
      return false; 
    }
  
    snake.column += horizontal;
    snake.row += vertical;
    if(board.isColliding(snake) || !board.isInsideBoard(snake)){
      snake.column -= horizontal;
      snake.row -= vertical;
      snakeState = SNAKE_COLLISION; 
      return false;
    }
    snakeSegment.updateMove();
       
    movesCount += abs(horizontal) + abs(vertical);
       
    if(snake.isCollidingWith(target)){
      //snake.objColor=color(26,255,0);
      targetReached = true;
      return true; 
    }
    
    return false;
  }
  
  private void reset(){
     snakeState = SNAKE_OK;
  }
}
