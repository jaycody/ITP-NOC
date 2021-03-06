import pbox2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

// A list for all of our rectangles
ArrayList<Box> boxes;

PBox2D box2d;		

void setup() {
  size(400,300);
  smooth();
  // Initialize and create the Box2D world
  box2d = new PBox2D(this);	
  box2d.createWorld();
  
  // Create ArrayLists
  boxes = new ArrayList<Box>();
}

void draw() {
  background(255);
  
  // We must always step through time!
  if (mousePressed)
  box2d.step();    


  // When the mouse is clicked, add a new Box object
  if (mousePressed) {
    Box p = new Box(mouseX,mouseY);
    boxes.add(p);
  }

  // Display all the boxes
  for (Box b: boxes) {
    b.display();
  }
}
