import processing.sound.*;

SinOsc sine;

float freq;

void setup() {
  size(400, 400);
  sine = new SinOsc(this);
  sine.play();
  textSize(32);
  textAlign(CENTER);
}

void draw() {
  background(176, 204, 226);
  float hertz = map(mouseX, 0, width, 50.0, 600.0);
  float radius = map(mouseX, 0, width, 5, 20);
  sine.freq(hertz);
  owl(350, 230, radius, 176, 23, 31);
  owl(275, 230, radius, 58, 95, 205);
  owl(50, 230, radius,102, 205, 170);
  owl(125, 230, radius, 255, 255, 0);
  owl(200, 230, radius, 255, 193, 193);
  text("Owl-o-Meter", 200, 80);
  text(int(hertz) + " Hz", 200, 300);
  // Draw Wave
  //stroke(26, 76, 102);
  //for (int x = 0; x<width; x++) {
  //  float angle = map(x, 0, width, 0, TWO_PI* hertz);
  //  float sinValue = sin(angle) *120;
  //  line(x, 0, x, height/2 + sinValue);
  //}
}

void owl(int x, int y, float radius, int r, int g, int b) {
  pushMatrix();
  translate(x, y);
  stroke(r, g, b); //138, 138, 125);
  strokeWeight(70);
  line(0, -35, 0, -65); // Body
  noStroke();
  fill(255);
  ellipse(-17.5, -65, 35, 35); // Left Eye Dome
  ellipse(17.5, -65, 35, 35); // Right Eye Dome
  arc(0,-65,70, 70, 0, PI); // Chin
  fill(51, 51, 30);
  ellipse(-14, -65, radius, radius); // Left Eye
  ellipse(14, -65, radius, radius); //Right Eye
  quad(0, -58, 4, -51, 0, -44, -4, -51); // Beak
  popMatrix();
}