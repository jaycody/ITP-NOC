// The Nature of Code
// Daniel Shiffman
// Draft book

// Example 1-1: Bouncing Ball, no vectors
float x = 100;
float y = 100;
float xspeed = 2.5;
float yspeed = 2;

void setup() {
  size(200,200);
  smooth();
  background(255);
}

void draw() {
  noStroke();
  fill(255,10);
  rect(0,0,width,height);
  

  // Add the current speed to the location.
  x = x + xspeed;
  y = y + yspeed;

  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }


  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(x,y,16,16);
}


