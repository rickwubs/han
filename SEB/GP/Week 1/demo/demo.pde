int breedte = 75;
int hoogte = 150;
int xPos = 60;
int yPos = 50;
int opp = breedte * hoogte;

size(200, 300);
smooth();
rect(xPos, yPos, breedte, hoogte);
text("Oppervlakte: " + opp, xPos, hoogte + yPos + 20);
