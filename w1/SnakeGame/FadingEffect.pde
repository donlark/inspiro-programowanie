class FadingEffect {
  private int nBlocks;
  private int millisPerBlock;
  private int startTime;
  
  private final int START = -1;
  private final int STOP = -2;
  
  public FadingEffect(int nBlocks, int millisPerBlock){
    this.nBlocks = nBlocks;
    this.millisPerBlock = millisPerBlock;
    this.startTime = START;
  } 
   
  public void restart(){
    startTime = START;  
  }
   
  public int fade(){
    if(startTime == STOP){
      return 1; 
    }
    if(startTime == START){
      startTime = millis(); 
    }
    int dt = millis() - startTime;
    for(int i = 0; i < nBlocks; i++){
      if( dt < (i * millisPerBlock) ){
        return nBlocks - i;
      }
    } 
    startTime = STOP;
    return 1;
   }
}
