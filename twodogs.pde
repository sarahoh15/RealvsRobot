import gifAnimation.*;
float mx;
float my;
float xpos;
float ypos;
float drag = 30.0;

float easing = 0.5;
int numFrames = 7;
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
PImage img;
Gif myAnimation;
Gif myAnimation1;

void setup(){
  size (1040,780);
  frameRate(5);
  myAnimation = new Gif(this,"regular-dog.gif");
  myAnimation1 = new Gif(this,"robotdog.gif");
  myAnimation.play();
  myAnimation1.play();
  ypos = height * 0.07;
}

void draw() {
  float dx = mouseX - xpos;
  xpos = xpos + dx/drag;
  
  if (abs(mouseX - mx) > 0.1) {
    mx = mx + (mouseX - mx) * easing;
  }
  if (abs(mouseY - my) > 0.1) {
    my = my + (mouseY- my) * easing;
  }
  
   if (mousePressed) {
    background(91, 137, 243);
    image(myAnimation1, xpos-1040/2, ypos);
  } else {
    background(255, 248, 133);
    image(myAnimation, xpos-1040/2, ypos);
    
  }
}
