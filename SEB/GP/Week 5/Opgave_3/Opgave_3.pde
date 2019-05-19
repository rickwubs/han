void setup() {
  int aantalWorpen = 0;            // moet 1 zijn
  int eersteWorp = dobbel();
  int tweedeWorp = dobbel();
  while(eersteWorp <> tweedeWorp) { // <> moet != zijn
    aantalWorpen++;
    eersteworp = dobbel();          // hoofdletter W
    tweedeworp = dobbel();          // idem
  }
  println("Er is " + aantalWorpen + " keer gegooid.");
}

int dobbel() {
  return round( random(0,7) ); // round moet floor zijn, en 0 moet 1 zijn
}

/*
// Goede code:
void setup() {
  int aantalWorpen = 1;
  int eersteWorp = dobbel();
  int tweedeWorp = dobbel();
  while(eersteWorp != tweedeWorp) {
    aantalWorpen++;
    eersteWorp = dobbel();
    tweedeWorp = dobbel();
  }
  println("Er is " + aantalWorpen + " keer gegooid.");
}

int dobbel() {
  return floor( random(1,7) );
}
*/