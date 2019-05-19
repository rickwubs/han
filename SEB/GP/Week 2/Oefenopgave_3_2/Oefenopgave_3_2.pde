int x = 0;
int y = 0;

void setup() {
  size(400,400);
}

void draw() {
    println("X: " + x + " Y: " + y);
}
// is alleen wellicht te gevoelig? Niet elke waarde wordt weergegeven.
void mouseMoved(){
  x = mouseX;
  y = mouseY;
}
