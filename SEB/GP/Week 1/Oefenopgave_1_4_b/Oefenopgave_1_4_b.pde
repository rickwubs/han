int xPos = 10; // beginpositie x coordinaat (xoffset)
int yPos = xPos; // beginpositie y coordinaat gelijk aan x coordinaat (yoffset)
int hoogte = xPos * 10; // hoogte van de vlag is 10 keer de x-begincoordinaat 
int breedte = hoogte * 2; // vlag is twee keer zo breed als hoog
float diameter = breedte / 3.0; // diameter cirkel is 1/3e van de breedte.
float xcoord = xPos + (breedte / 2.0); // cirkel middelpunt x-coordinaat is helft van de breedte + xoffset 
float ycoord = yPos + (hoogte / 2.0); // cirkel middelpunt y-coordinaat is helft van de hoogte + yoffset

size(400, 400); // grootte van het scherm
fill(255, 255, 255); // witte vlag
rect(xPos, yPos, breedte, hoogte); // teken de vlag
fill(255, 0, 0); // rode cirkel
circle(xcoord, ycoord, diameter); // teken de cirkel
fill(0, 0, 0); // zwarte tekst
textAlign(CENTER, CENTER); // centreer tekst
text("Nippon", xcoord, ycoord); // teken de tekst
