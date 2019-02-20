import viewport.*;

Viewport left, right;
PImage imgLeft, imgRight;

void setup() {
  size(1000, 500, P2D);

  imgLeft = loadImage("left.jpg");
  imgRight = loadImage("right.jpg");

  left = new Viewport(this, 0, 0, 500, 500, imgLeft.width, imgLeft.height);
  right = new Viewport(this, 500, 0, 500, 500, imgRight.width, imgRight.height);
}

void draw() {
  background(0);

  left.begin();
  if (left.scale>2) fill(255, 0, 0); 
  else fill(0, 255, 0);
  image(imgLeft, 0, 0);
  ellipse(0, 0, 50, 50);
  left.end();


  right.begin();
  if (right.scale>2) fill(255, 0, 0); 
  else fill(0, 255, 0);
  image(imgRight, 0, 0);
  ellipse(0, 0, 50, 50);
  right.end();
}
