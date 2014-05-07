class InputOutputBinder implements AudioSignal, AudioListener
{
  private float[] leftChannel ;
  private float[] rightChannel;
 InputOutputBinder(int sample)
  {
    leftChannel = new float[sample];
    rightChannel= new float[sample];
  }
  // This part is implementing AudioSignal interface, see Minim reference
  void generate(float[] samp)
  {
    
    arraycopy(leftChannel,samp);
  }
  void generate(float[] left, float[] right)
  {
    
     arraycopy(leftChannel,left);
     arraycopy(rightChannel,right);
  }
 // This part is implementing AudioListener interface, see Minim reference
  synchronized void samples(float[] samp)
  {
     arraycopy(samp,leftChannel);
  }
  synchronized void samples(float[] sampL, float[] sampR)
  {
    arraycopy(sampL,leftChannel);
    arraycopy(sampR,rightChannel);
  }  
} 
