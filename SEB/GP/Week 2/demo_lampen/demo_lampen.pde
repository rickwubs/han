boolean isUit = true;

void setup() {
  size(400, 200);
  ellipseMode(CORNER);
}

void draw() {
  background(0);
  if (isUit) {
    tekenDrieLampen(#760707);
  } else {
    tekenDrieLampen(#F7072C);
    tekenLamp(55, 50, #F7072C);
    tekenLamp(155, 50, #F7072C);
    tekenLamp(255, 50, #F7072C);
  }
  isUit = !isUit;
  delay(100);
}

void tekenLamp(int xPositie, int yPositie, int kleur) {
   fill(100);
   rect(xPositie + 20, yPositie + 70, 50, 50);
   fill(kleur);
   ellipse(xPositie, yPositie, 90, 90);
}

void tekenDrieLampen(int kleur){
  tekenLamp(55, 50, kleur);
  tekenLamp(155, 50, kleur);
  tekenLamp(255, 50, kleur);
}
