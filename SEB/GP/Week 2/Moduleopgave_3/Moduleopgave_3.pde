float robotX = 0;
float robotY = 0;

float vrachtX = 0;
float vrachtY = 0;

float doelX = 0;
float doelY = 0;

float lengte = 40;
float hoogte = lengte;
float radius = lengte;

String ladingOpgepakt = "nee";
String stopLoop = "nee";

int kleurRobot = #FFFFFF;

void setup() {
  size(400,400);
  background(0);
  ellipseMode(CORNER);
  vrachtX = lengte * int(random(10));
  vrachtY = hoogte * int(random(10));
  doelX = lengte * int(random(10));
  doelY = hoogte * int(random(10));
}

void robot() {
  fill(kleurRobot);
  rect(robotX, robotY, lengte, hoogte);
}

void vracht() {
  fill(127, 127, 127);
  circle(vrachtX, vrachtY, radius); 
}

void doel() {
  fill(0, 255, 0);
  rect(doelX, doelY, lengte, hoogte);
}

void draw(){
  background(0);
  doel();
  robot();
  vracht();
  
  if (stopLoop == "ja"){
    noLoop();
  }
}

void keyPressed() {
  // Als er op enter wordt gedrukt
  if (key == ENTER) {
    // en de robot op de plek van de vracht staat en het doel bereikt
    if (robotX == vrachtX && robotY == vrachtY && robotX == doelX && robotY == doelY) {
      kleurRobot = #0000FF; 
      println("Je hebt gewonnen!");
      stopLoop = "ja";
      // en de robot op de plek van de vracht staat, maar het doel niet bereikt
      } else if (robotX == vrachtX && robotY == vrachtY) {
        switch(ladingOpgepakt) {
          case "ja":
            println("lading neergezet");
            kleurRobot = #FFFFFF;
            ladingOpgepakt = "nee";
            vrachtX = robotX;
            vrachtY = robotY;
            break;
          case "nee":
            println("lading opgepakt");
            kleurRobot = #00FF00;
            ladingOpgepakt = "ja";
            break;
      }
     // als de robot niet op de plek van de vracht staat
    } else {
      println("Lading kan alleen opgepakt worden wanneer je met de robot op de lading staat.");
    }
   // Als er op een pijltjestoets wordt gedrukt
  } else if (key == CODED) {
    switch(keyCode){
      case UP:
        robotY = constrain(robotY - hoogte, 0, height - hoogte);
        break;
      case RIGHT:
        robotX = constrain(robotX + lengte, 0, width - lengte);
        break;
      case DOWN:
        robotY = constrain(robotY + hoogte, 0, height - hoogte);
        break;
      case LEFT:
        robotX = constrain(robotX - lengte, 0, width + lengte);
        break;
    }
  // Als er op een overige toets wordt gedrukt 
  } else {
    println("Gebruik de pijltjestoetsen om de robot te bewegen.");
    println("Gebruik ENTER om een lading op te pakken of weer te laten staan.");
    println("Breng de lading naar het groene vlak");
  }
  
  if (ladingOpgepakt == "ja") {
    vrachtX = robotX;
    vrachtY = robotY;
  }   
}
