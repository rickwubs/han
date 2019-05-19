int xPos = 10; // beginpositie x coordinaat (xoffset)
int yPos = 10; // beginpositie y coordinaat gelijk aan x coordinaat (yoffset)
boolean a = false; // beginpositie boolean is false.
public void settings () {
size(800, 800); // grootte van het scherm
}
void draw(){
  if (a == true) {
int hoogte = 80; // hoogte van de vlag is 10% van de size, hardcoded
int breedte = hoogte * 2; // vlag is twee keer zo breed als hoog
float diameter = breedte / 3.0; // diameter cirkel is 1/3e van de breedte.
float xcoord = xPos + (breedte / 2.0); // cirkel middelpunt x-coordinaat is helft van de breedte + xoffset 
float ycoord = yPos + (hoogte / 2.0); // cirkel middelpunt y-coordinaat is helft van de hoogte + yoffset


fill(255, 255, 255); // witte vlag
rect(xPos, yPos, breedte, hoogte); // teken de vlag
fill(255, 0, 0); // rode cirkel
circle(xcoord, ycoord, diameter); // teken de cirkel
fill(0, 0, 0); // zwarte tekst
textAlign(CENTER, CENTER); // centreer tekst
text("Nippon", xcoord, ycoord); // teken de tekst
  }
}

void mousePressed() {
xPos = mouseX; // xPos gelijk aan xcoordinaat muispositie
yPos = mouseY; // yPos gleijk aan ycoordinaat muispositie
a = true; // boolean a is true.
}
