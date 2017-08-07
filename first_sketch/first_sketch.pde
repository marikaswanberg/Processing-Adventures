void setup() {
  background(0);
  size(1000, 1000);
  frameRate(100);
}
float r = 255;
float g = 0;
float b = 0;
float a = 1;
float x = 1;
float y = 1;

void draw() {
  if (mousePressed) {
    fill(0);
  } else {
  r = (r + PI + 3*r)%255;
  g = (g + 2)%255;
  b = (b + 7)%255;
  a = (a + 73)%255;
  x = (x+PI)%123;
  y = (y*3)%132;
  noStroke();
  fill(r, g, b, a);

}
  ellipse(mouseX, mouseY, x, y);
}