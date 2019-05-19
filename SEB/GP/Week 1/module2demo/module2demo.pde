size(250, 200);
int x = 20;
int y = 0;
int breedteIngevoerd = -200;

int breedte = constrain(breedteIngevoerd, 0 - x, width - x - 1);
int hoogte = 100;

int opp = abs(hoogte * breedte);

rect(x, y, breedte, hoogte);

text("De oppervlakte is: " + opp, x, y + hoogte + 20);
