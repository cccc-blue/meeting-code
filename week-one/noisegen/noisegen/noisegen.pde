import processing.sound.*;
import java.lang.*;

class SineFunction {
  double velocity;
  //double amplitude;
  double offset;
  double x;
  public SineFunction(double velocity, double offset) {
    this.velocity = velocity;
    this.offset = offset;
  }
  double getValue() {
    return Math.sin(offset+velocity*x);
  }
  void step() {
    x+=0.01*velocity;
  }
}

SinOsc[] oscs;
SineFunction[] fns;

float[] frequencies = {261.63, 293.66, 329.63, 392.00, 440.00, 523.25, 587.33, 659.25, 783.99, 880.00};
int speed = 4;
int mod = (int) (120.0/((float) speed));
void setup() {
  for(int i=0; i<frequencies.length; i++) {
    //frequencies[i] *= 0.7;
  }
  
  size(1000,1000);
 
  oscs = new SinOsc[3];
  fns = new SineFunction[5];
  for(int i=0; i<oscs.length; i++) {
    oscs[i] = new SinOsc(this);
    oscs[i].play();
    
    fns[i] = new SineFunction(1.0+Math.random(), Math.random());
  }
  
  
}
void draw(){
  rect (0,0,1000,1000);
  fill (255,255,255);
  for(int i=0; i<oscs.length; i++) {
    oscs[i].amp((float) fns[i].getValue());
    fns[i].step();
  }
  if(frameCount % mod == 0) {
    float myFreq = frequencies[(int) (Math.random()*((float) frequencies.length))];
    for(int i=0; i<oscs.length; i++) {     
     oscs[i].freq(frequencies[(int) (Math.random()*((float) frequencies.length))]);
     
     // uncomment this for a bad time
     //oscs[i].freq(myFreq*(i+1)*((float)(1.0+0.3*fns[i].getValue())));
    }
  }
}