int diameterEersteCirkel = 20;
int diameterTweedeCirkel = 40;
int diameterDerdeCirkel = 60;
int diameterVierdeCirkel = 80;

int xPositie = 50;
int yPositie = 50;

boolean isGestart = false;

// lager getal zorgt voor een hogere snelheid.
// 0 zorgt ervoor dat elke draw() de cirkel met een diameter verschuift.
int snelheid = 20; 

int breedte = 100;
int hoogte = 50;

int bullseyeLinks;
int bullseyeRechts;
int bullseyeBoven;
int bullseyeOnder;

int startknopLinks = width / 2 - breedte / 2;
int startknopRechts = width / 2 + breedte / 2;
int startknopBoven = height - hoogte;
int startknopOnder = height;

int raak = 0;
int mis = 0;

void setup(){
  size(600, 600);
  textAlign(CENTER);
}

void draw(){
  background(0);
  tekenBullseye();
  tekenStartknop();
  if (isGestart) {
    xPositie();
    if(xPositie > width) {
      xPositie = -50; // kan niet 0 zijn ivm definitie xPositie (delen door 0 mag niet).
    }
  }
}

void mouseClicked(){
  // als je op de knop drukt
  if(mouseX > width / 2 - breedte / 2 && mouseX < width / 2 + breedte && mouseY > height - hoogte) {
    if(isGestart){
      isGestart = !isGestart;
      println("spel voorbij");
      println(raak + " keer raak");
      println(mis + " keer mis");
    } else {
      isGestart = !isGestart;
    }
  // als je op de schietschijf drukt
  } else if (mouseX > xPositie - diameterVierdeCirkel && mouseX < xPositie + diameterVierdeCirkel && mouseY > yPositie - diameterVierdeCirkel && mouseY < yPositie + diameterVierdeCirkel) {
    raak++;
    println(raak + " keer raak");
  } else {
    println(mis + " keer mis");
    mis++;
  }
  

}

void tekenBullseye(){
  fill(255, 255, 255);
  circle(xPositie, yPositie, diameterVierdeCirkel);
  fill(255, 0, 0);
  circle(xPositie, yPositie, diameterDerdeCirkel);
  fill(255, 255, 255);
  circle(xPositie, yPositie, diameterTweedeCirkel);
  fill(255, 0, 0);
  circle(xPositie, yPositie, diameterEersteCirkel);
}

void tekenStartknop(){
  fill(0, 255, 0);
  rect(width /2 - breedte / 2, height - hoogte, breedte, hoogte);
  fill(0);
  if(isGestart){
    text("STOP", width / 2, height - hoogte / 2);
  } else {
    text("START", width / 2, height - hoogte / 2);
  }
}

int xPositie(){
  return xPositie += diameterVierdeCirkel / snelheid;
}
