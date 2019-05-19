int x = 0;
int y = 0;
int credits = 25;


void setup() {
  size(400,400);
}

void draw() {
}

// is alleen wellicht te gevoelig? Niet elke waarde wordt weergegeven.
void mouseClicked(){
  if (credits == 0) {
    println("Je hebt verloren. Speel opnieuw.");
    credits = 25;
  } else {
    if ((mouseX % 2 == 0) && (mouseY % 2 == 0)) {
      credits++;
      println(credits);
    } else if ((mouseX % 2 != 0) && (mouseY % 2 != 0)) {
      credits--;
      println(credits);
    } else {
      println(credits);
    }
  }
}
