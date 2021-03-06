// Nature of Code 2011
// Daniel Shiffman
// Chapter 3: Asteroids exercise
// http://www.shiffman.net

// Mover object
Spaceship ship;

void setup() {
  size(500, 500);
  smooth();
  ship = new Spaceship();
}

void draw() {
  background(50); 
  
  // Update location
  ship.update();
  // Wrape edges
  ship.wrapEdges();
  // Draw ship
  ship.display();
   

  fill(255);
  text("left right arrows to turn, up to thrust",10,height-5);

  // Turn or thrust the ship depending on what key is pressed
  if (keyPressed) {
    if (key == CODED && keyCode == LEFT) {
      ship.turn(-0.03);
    } else if (key == CODED && keyCode == RIGHT) {
      ship.turn(0.03);
    } else if (key == CODED && keyCode == UP) {
      ship.thrust(); 
    }
  }
}


