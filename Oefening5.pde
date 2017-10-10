int nBalls = 20;

float x[] = new float[nBalls], 
  y[] = new float[nBalls], 
  diameter [] = new float[nBalls],
  xVel [] = new float[nBalls],
  yVel [] = new float[nBalls],
  colour [] = new float[nBalls];

void setup() {
  size(960, 540);
  
  for(int iBall=0; iBall<nBalls; iBall++) {
    x[iBall] = random(0, width);
    y[iBall] = random(0, height);
    diameter[iBall] = random(10, 100);
    xVel[iBall] = random(-3, 3);
    yVel[iBall] = random(-3, 3);
    colour[iBall] = random(0, 255);
  }
}

void draw() {
  background(255);
  for (int iBall=0; iBall<nBalls; iBall++) {
    fill(0, 0, colour[iBall]);
    ellipse(x[iBall]+=xVel[iBall], y[iBall]+=yVel[iBall], diameter[iBall], diameter[iBall]);
  }
}
