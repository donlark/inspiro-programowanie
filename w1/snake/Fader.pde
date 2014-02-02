class Fader{
  final int nSegments;
  final int millisPerSegment;
  int startTime=-1;
  
   public Fader(int nSegments, int millisPerSegment){
      this.nSegments=nSegments;
      this.millisPerSegment=millisPerSegment;
   } 
   
   public void restart(){
     startTime=-1;  
   }
   
   public int fade(){
     if(startTime==-2){
        return 0; 
     }
     if(startTime==-1){
       startTime = millis(); 
     }
     int dt = millis()-startTime;
      for(int i=0; i < nSegments; i++){
         if(dt < (i*millisPerSegment)){
           return nSegments-i;
         }
      } 
      // stop
      startTime=-2;
      return 0;
   }
}
