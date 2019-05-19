// lijndikte
int lijndikte = 2;

// witte rechthoek
int x = 0;
int y = 0;
int hoogte = constrain(200, 0, width / 2);
int breedte = hoogte * 2;

// horizontale lijn
int xPosHorizontaleLijnBegin = x + lijndikte;
int yPosHorizontaleLijnBegin = y + hoogte / 2;
int xPosHorizontaleLijnEind = x + breedte - lijndikte;
int yPosHorizontaleLijnEind = yPosHorizontaleLijnBegin;

// verticale lijn
int xPosVerticaleLijnBegin = x + breedte / 2;
int yPosVerticaleLijnBegin = y + lijndikte;
int xPosVerticaleLijnEind = xPosVerticaleLijnBegin;
int yPosVerticaleLijnEind = y + hoogte - lijndikte;

// rechthoek kwadrant linksboven
float xLinksBoven = x + lijndikte;
float yLinksBoven = y + lijndikte;
float breedteLinksBoven = xLinksBoven + breedte / 2 - lijndikte * 2;
float hoogteLinksBoven = yLinksBoven + hoogte / 2 - lijndikte * 2 - 1;
// rechthoek kwadrant rechtsboven
float xRechtsBoven = x + lijndikte + breedte / 2;
float yRechtsBoven = y + lijndikte;
float breedteRechtsBoven = breedteLinksBoven;
float hoogteRechtsBoven = hoogteLinksBoven;
// rechthoek kwadrant linksonder
float xLinksOnder = xLinksBoven;
float yLinksOnder = y + lijndikte * 2 + hoogteLinksBoven + 1;
float breedteLinksOnder = breedteLinksBoven;
float hoogteLinksOnder = hoogteLinksBoven;
// rechthoek kwadrant rechtsonder
float xRechtsOnder = xRechtsBoven;
float yRechtsOnder = yLinksOnder;
float breedteRechtsOnder = breedteLinksBoven;
float hoogteRechtsOnder = hoogteLinksBoven;

void setup(){
  size(500, 500);
}

void draw(){
  //teken zwarte buitenlijn + wit vlak
  strokeWeight(lijndikte);
  fill(255, 255, 255);
  stroke(0, 0, 0);
  rect(x, y, breedte, hoogte);
  // teken rode horizontale en verticale lijnen
  stroke(255, 0, 0);
  line(xPosHorizontaleLijnBegin, yPosHorizontaleLijnBegin, xPosHorizontaleLijnEind, yPosHorizontaleLijnEind);
  line(xPosVerticaleLijnBegin, yPosVerticaleLijnBegin, xPosVerticaleLijnEind, yPosVerticaleLijnEind);
  // teken volgende rechthoeken zonder buitenrand
  noStroke();
  // teken blauw rechthoek kwadrant linksboven
  fill(0, 0, 255);
  rect(xLinksBoven, yLinksBoven, breedteLinksBoven, hoogteLinksBoven);
  // teken groen rechthoek kwadrant rechtsboven
  fill(0, 255, 0);
  rect(xRechtsBoven, yRechtsBoven, breedteRechtsBoven, hoogteRechtsBoven);
  // teken groen rechthoek kwadrant linksonder
  fill(0, 255, 0);
  rect(xLinksOnder, yLinksOnder, breedteLinksOnder, hoogteLinksOnder);
  // teken blauw rechthoek kwadrant rechtsonder
  fill(0, 0, 255);
  rect(xRechtsOnder, yRechtsOnder, breedteRechtsOnder, hoogteRechtsOnder);
}
