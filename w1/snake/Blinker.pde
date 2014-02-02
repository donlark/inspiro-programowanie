class Blinker{
  final int nSegments;
  final int millisPerSegment;
  int startTime=-1;
  
   public Blinker(int nSegments, int millisPerSegment){
      this.nSegments=nSegments;
      this.millisPerSegment=millisPerSegment;
   }
  
   private int blink(){
     if(startTime==-1){
       startTime = millis(); 
     }
     int dt = millis()-startTime;
     for( int i=1; i <= nSegments; i++){
        if(dt < (i*millisPerSegment) ){
           return i;
        } 
     }
     startTime=millis();
     return 1; 
   }
}
