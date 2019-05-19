int x = 0;
int y = 0;
int credits = 25;
int kerenGoed = 0;


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
      kerenGoed++;
      println(credits + " " + kerenGoed);
      switch(kerenGoed){
        case 1:
          credits++;
          break;
        case 2:
          credits += 2;
          break;
        case 3:
          credits += 3;
          break;
        case 4:
          credits += 5;
          break;
        default:
          credits += 10;
          break;
      }
    } else if ((mouseX % 2 != 0) && (mouseY % 2 != 0)) {
      credits--;
      kerenGoed = 0;
      println(credits);
    } else {
      kerenGoed = 0;
      println(credits);
    }
  }
}

// controleren of de muis verplaatst is kan op 2 manieren:
// manier 1: via mouseMoved();
// manier 2: int voor mouseX en mouseY maken, huidige waarde mouseX en mouseY hiermee 
// vergelijken.
