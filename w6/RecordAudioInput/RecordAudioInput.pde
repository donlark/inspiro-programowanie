/**
  * This sketch demonstrates how to an <code>AudioRecorder</code> to record audio to disk. 
  * To use this sketch you need to have something plugged into the line-in on your computer, 
  * or else be working on a laptop with an active built-in microphone. 
  * <p>
  * Press 'r' to toggle recording on and off and the press 's' to save to disk. 
  * The recorded file will be placed in the sketch folder of the sketch.
  * <p>
  * For more information about Minim and additional features, 
  * visit http://code.compartmental.net/minim/
  */

import ddf.minim.*;

Minim minim;
AudioInput in;
AudioOutput out;


void setup()
{
  size(512, 200, P3D);
  
  minim = new Minim(this);

  int buffer = 1024;
  out = minim.getLineOut(Minim.STEREO, buffer);
  in = minim.getLineIn(Minim.STEREO, buffer);
  InputOutputBinder signal = new InputOutputBinder(1024);
  //add listener to gather incoming data
  in.addListener(signal);
  // adds the signal to the output
  out.addSignal(signal);
  
  
  textFont(createFont("Arial", 12));
}

void draw()
{
  background(0); 
  stroke(255);
  // draw the waveforms
  // the values returned by left.get() and right.get() will be between -1 and 1,
  // so we need to scale them up to see the waveform
  for(int i = 0; i < in.bufferSize() - 1; i++)
  {
    line(i, 50 + in.left.get(i)*50, i+1, 50 + in.left.get(i+1)*50);
    line(i, 150 + in.right.get(i)*50, i+1, 150 + in.right.get(i+1)*50);
  }
  
  
}


