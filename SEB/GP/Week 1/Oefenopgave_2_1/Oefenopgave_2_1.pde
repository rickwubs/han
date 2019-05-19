int lijndikte = 2;

int x = 0;
int y = 0;
int hoogte = 100;
int breedte = hoogte * 2;

int xPosHorizontaleLijnBegin = x + lijndikte;
int yPosHorizontaleLijnBegin = y + hoogte / 2;
int xPosHorizontaleLijnEind = x + breedte - lijndikte;
int yPosHorizontaleLijnEind = yPosHorizontaleLijnBegin;

int xPosVerticaleLijnBegin = x + breedte / 2;
int yPosVerticaleLijnBegin = y + lijndikte;
int xPosVerticaleLijnEind = xPosVerticaleLijnBegin;
int yPosVerticaleLijnEind = y + hoogte - lijndikte;

void setup(){
  size(400,400);
}

void draw(){
  strokeWeight(lijndikte);
  fill(255, 255, 255);
  stroke(0, 0, 0);
  rect(x, y, breedte, hoogte);
  stroke(255, 0, 0);
  line(xPosHorizontaleLijnBegin, yPosHorizontaleLijnBegin, xPosHorizontaleLijnEind, yPosHorizontaleLijnEind);
  line(xPosVerticaleLijnBegin, yPosVerticaleLijnBegin, xPosVerticaleLijnEind, yPosVerticaleLijnEind);
}
