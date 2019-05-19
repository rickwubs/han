
void setup() {
  int aantalWorpen = 0;
  int eersteWorp = dobbel();
  int tweedeWorp = dobbel();
  while (eersteWorp != tweedeWorp) {
    ++aantalWorpen;
    eersteWorp = dobbel();
    tweedeWorp = dobbel();
  }
  println("Er is " + aantalWorpen + " keer gegooid.");
}

int dobbel() {
  return round(random(0, 7));
}



/*
FOUTEN:
 -------
 eersteWorp <> tweedeWorp -> eersteWorp != tweedeWorp;
 ++aantalWorpen (ervanuit gaande dat de initializatie ook als worp geteld wordt);
 eersteworp -> eersteWorp;
 tweedeworp -> tweedeWorp;
 
 
 */
