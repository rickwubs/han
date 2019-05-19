int hoogte;
int breedte;
int kleur;
int startX;
int eindX;
int startY;
int eindY;

void setup() {
    size(400,400);
    
    hoogte = 150;
    breedte = 100;
    
    kleur = #982020;
    
    startX = width / 2 - breedte / 2;
    eindX = startX + breedte;
    startY = height / 2 - hoogte / 2;
    eindY = startY + hoogte;
}

void draw() {
    fill(kleur);
    rect(startX, startY, breedte, hoogte);
}

void mouseClicked() {
  if (mouseX > startX && mouseX < eindX &&
      mouseY > startY && mouseY < eindY) {
     switch(kleur) {
      case #982020:
        kleur = #49C12F;
        break;
      case #49C12F:
        kleur = #29286F;
        break;
      case #29286F:
        kleur = #982020;
        break;
    }
  }
}
