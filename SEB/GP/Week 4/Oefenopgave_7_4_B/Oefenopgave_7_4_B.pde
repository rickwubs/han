// Een array van int[6][2] met coordinaten van cirkels
int[][] cirkels = { {10,15},{100,130},{77,43},{30,145},{185,17},{99,76} };
final int DIAMETER = 20;
final int GEEL = #FFFF00;
final int ROOD = #FF0000;

void setup() {
  size(200, 200);
  ellipseMode(CENTER);
}

void draw() {
  background(#000000);
  tekenCirkels(cirkels);
}

void tekenCirkels(int[][] coordinaten) {
  for (int i = 0; i < coordinaten.length; i++) {
    
    if (dist(coordinaten[i][0], coordinaten[i][1], mouseX, mouseY) < DIAMETER / 2) {
      fill(ROOD);
      stroke(ROOD);
    } else {
      fill(GEEL);
      stroke(GEEL);
    }

    circle(coordinaten[i][0], coordinaten[i][1], DIAMETER);
  }
}
