boolean isUit = true;
boolean isGestart = false;

void setup() {
  size(400, 200);
  ellipseMode(CORNER);
  textAlign(CENTER);
}

void draw() {
  background(0);
  fill(#00FF00);
  rect(width / 2 - 25, height - 50, 50, 150);
    fill(0);
      text("zet aan", width / 2, height - 5);
  if(isGestart) {
    fill(#00FF00);
    rect(width / 2 - 25, height - 50, 50, 150);
    fill(0);
    text("zet uit", width / 2, height - 5);
    if (isUit) {
      tekenDrieLampen(#FF0000, #00FF00, #0000FF);
    } else {
      tekenDrieLampen(#440000, #004400, #000044);
    }
    isUit = !isUit;
    delay(100);
  } else {
    tekenDrieLampen(#FF0000, #00FF00, #0000FF);
  }

}

void tekenLamp(int xPositie, int yPositie, int kleur) {
   fill(100);
   rect(xPositie + 20, yPositie + 70, 50, 50);
   fill(kleur);
   ellipse(xPositie, yPositie, 90, 90);
}

void tekenDrieLampen(int kleur1, int kleur2, int kleur3){
  tekenLamp(55, 50, kleur1);
  tekenLamp(155, 50, kleur2);
  tekenLamp(255, 50, kleur3);
}

void mouseClicked(){
  if(mouseX > width / 2 - 25 && mouseX < width / 2 + 25 & mouseY > height - 50){
    isGestart = !isGestart;
  }
}
