class GlowingEffect {
  private int nStates;
  private int millisPerState;
  
  private final int START = -1;
  private int startTime = START;
  
  public GlowingEffect(int millisPerState){
    this.nStates = 2;
    this.millisPerState = millisPerState;
  }
  
  public boolean glow(){
    if(startTime == START){
      startTime = millis(); 
    }
    int dt = millis() - startTime;
    for( int i=1; i <= nStates; i++){
      if( dt < (i * millisPerState) ){
        return i==1;
      } 
    }
    startTime = millis();
    return true; 
  }
}
