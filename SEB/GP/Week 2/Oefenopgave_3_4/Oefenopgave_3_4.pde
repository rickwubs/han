int x = 0;
int y = 0;

int tijdcheck = 0;
int interval = 1000;
int seconden = 0;

int breedte;
int hoogte;

int startX;
int startY;

void setup() {
  size(400,400);
  tijdcheck = millis();
  breedte = 100;
  hoogte = 50;
  
  startX = width / 2 - breedte / 2;
  startY = height / 2 - hoogte / 2;
  
  
}

void draw() {
  // werkt niet; krijg alsnog oneven getallen te zien. delay op mouseclicked?
    if ((millis() > tijdcheck + interval) && (xIsEven() == "even") && (yIsEven() == "even")) {
      fill(255, 255, 0);
      rect(startX, startY, breedte, hoogte);
      tijdcheck = millis();
      seconden++;
      fill(255, 0, 0);
      // wederom; hoe weet ik hoe groot de totale tekst is in pixels?
      text("(" + x + " - " + y + ")", startX + breedte / 4, startY + hoogte / 2);
    }
}

String xIsEven() {
  if (mouseX % 2 == 0) {
    return "even";
  } else {
    return "oneven";
  }
}

String yIsEven(){
  if (mouseY % 2 == 0){
    return "even";
  } else {
    return "oneven";
  }
}

// is alleen wellicht te gevoelig? Niet elke waarde wordt weergegeven.
void mouseClicked(){
  x = mouseX;
  y = mouseY;
}
