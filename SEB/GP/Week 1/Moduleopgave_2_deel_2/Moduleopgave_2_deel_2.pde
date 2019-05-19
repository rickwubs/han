import controlP5.*;
ControlP5 theControl;

float zwaarondergewicht = 16;
float ondergewicht = 18.5;
float normaalgewicht = 25;
float overgewicht = 30;
float obees;

float lengte = 1.80;
float gewicht = 85;
float bmi = gewicht / (lengte * lengte);

void setup() {
  size(400, 350);
  theControl = new ControlP5(this);
  createNumberBoxes(theControl);
}



void draw() {
  float lengte = leesLengte() / 100;
  float gewicht = leesGewicht();

float bmi = (gewicht / (lengte * lengte)) * 4;
  background(0, 0, 0);
  println("lengte:" + leesLengte());
  println("gewicht: " + leesGewicht());
  println("bmi: " + bmi);
  fill(255, 255, 255);
  text("obees", 5, height - overgewicht * 4);
  stroke(255, 255, 255);
  line(0, height - overgewicht * 4, width, height - overgewicht * 4);
  text("overgewicht", 5, height - normaalgewicht * 4);
  line(0, height - normaalgewicht * 4, width, height - normaalgewicht * 4);
  text("normaal gewicht", 5, height - ondergewicht * 4);
  line(0, height - ondergewicht * 4, width, height - ondergewicht * 4);
  text("ondergewicht", 5, height - zwaarondergewicht * 4);
  stroke(0, 0, 0);
  line(0, height - zwaarondergewicht * 4, width, height - zwaarondergewicht * 4);
  fill(255, 0, 0);
  rect(width / 2, height - bmi, width / 4, bmi);
}
