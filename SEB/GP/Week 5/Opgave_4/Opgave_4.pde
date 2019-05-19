float[][] deelcijfers = { { 8.9,  9.0, 9.1 },
                          { 9.0 },
                          { 8.4, 2.1, 4.3 },
                          { 7.2, 6.4, 5.6 },
                          { 8.6, 7.9, 4.5 },
                          { 7.2, 2.3 } 
                        };
                        
final int AANTAL_TOETSEN = 3;
final int NIET_ALLE_CIJFERS = 1;
final int NIET_ALLES_VOLDOENDE = 4;
final float VOLDOENDE = 5.5;
                 
/*
cijfers: 'Toets1', 'Toets2', 'Toets3', als cijfer -1.0 dan de toets niet gemaakt.
Als niet alle deelcijfers dan eindcijfer 1
Anders als één van de deelcijfers < 5.5, eindcijfer altijd 4
anders eindcijfer is gemiddelde
*/

void setup() {
  drukAlleEindcijfersAf();
  int aantal = aantalIncompleteCijfers();
  println(aantal + " studenten hebben nog niet alle cijfers");
}

int aantalIncompleteCijfers() {
  int aantal = 0;
  for(int i=0; i<deelcijfers.length; i++) {
    if(eindcijfer(deelcijfers[i]) == NIET_ALLE_CIJFERS) {
      aantal++;
    }
  }
  return aantal;
}

void drukAlleEindcijfersAf() {
  println("Alle eindcijfers zijn: ");
  for(int i=0; i<deelcijfers.length; i++) {
    println(eindcijfer(deelcijfers[i]));
  }
}

int eindcijfer(float[] toetscijfers) {
  if(toetscijfers.length < AANTAL_TOETSEN) {
    return NIET_ALLE_CIJFERS;
  }
  else {
    float totaal = 0;
    for(int i=0; i<toetscijfers.length; i++) { // of i < AANTAL_TOETSEN
      if(toetscijfers[i] < VOLDOENDE) {
        return NIET_ALLES_VOLDOENDE;
      }
      else {
        totaal += toetscijfers[i];
      }
    }
    return round(totaal / toetscijfers.length); // of round(totaal / AANTAL_TOETSEN)
  }
}