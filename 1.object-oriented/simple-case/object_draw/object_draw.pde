// object oriented - example

void setup()
{
  size(800, 800);
  noStroke();
  Drawer myDrawer = new Drawer(); // creating an object of type Drawer
                                  // assigned to the variable myDrawer

  myDrawer.drawShape(); // calling a function (method)
                        // of the newly created object
}

class Drawer // a custom class named Drawer
{
  void drawShape() // a custom function (method) of the Drawer class
  {
    background(240, 239, 221);
    fill(40, 125, 85);
    ellipse(width/2, height/2, 300, 300);
  }
}
