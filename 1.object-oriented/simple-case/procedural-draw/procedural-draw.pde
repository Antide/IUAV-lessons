// procedural - example

void setup()
{
  size(800, 800);
  noStroke();
  drawShape(); // calling a function
}

void drawShape() // a custom function
{
  background(240, 239, 221);
  fill(40, 125, 85);
  ellipse(width/2, height/2, 300, 300);
}
