// geef hier aan hoeveel tafels je wenst te berekenen.
final int aantalTafels = 10;

// de code hieronder niet wijzigen.
void setup() {
  size(500, 500);
  fill(0);
  berekenTafels(aantalTafels);
}

void berekenTafels(int aantalTafels) {
  int kolomBreedte = width / (aantalTafels + 1);
  int kolomHoogte = height / (aantalTafels + 1);
  
  for (int i = 1; i < aantalTafels + 1; i++) {
    for (int j = 1; j < aantalTafels + 1; j++) {
      int antwoord = i * j;
      text(antwoord, i * kolomBreedte, j * kolomHoogte);
    }
  }
}
