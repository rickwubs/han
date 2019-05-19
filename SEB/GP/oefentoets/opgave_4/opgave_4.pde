float[][] deelcijfers = { { 8.9, 9.0, 9.1 }, 
  {9.0}, 
  {8.4, 2.1, 4.3}, 
  {7.2, 6.4, 5.6}, 
  {8.6, 7.9, 4.5}, 
  {7.2, 2.3} };

final int AANTAL_TOETSEN = 3;
final int NIET_ALLE_CIJFERS = 1;
final int NIET_ALLES_VOLDOENDE = 4;
final float VOLDOENDE = 5.5;
final int ALLES_VOLDOENDE = 2;

void setup() {
  drukAlleEindcijfersAf();
  int aantal = aantalIncompleteCijfers();
  println(aantal + " studenten hebben nog niet alle cijfers");
}

void drukAlleEindcijfersAf() {
  for (int i = 0; i < deelcijfers.length; i++) {
    if (heeftNietAlleCijfers(deelcijfers[i])) {
      println(NIET_ALLE_CIJFERS);
      
    } else if (heeftNietAllesVoldoende(deelcijfers[i]) ) {
      println(NIET_ALLES_VOLDOENDE);
    } else {
      println(berekenGemiddelde(deelcijfers[i]));
    }
  }
}

boolean heeftNietAllesVoldoende(float[] cijfers) {
  int resultaat = 0;
  for (int i = 0; i < cijfers.length; i++) {
    if (cijfers[i] < VOLDOENDE) {
      resultaat++;
    }
  }
  return resultaat != 0;
}

boolean heeftNietAlleCijfers(float[] cijfers) {
  return cijfers.length < 3;
}

int berekenGemiddelde(float[] cijfers) {
  float som = 0;
  float resultaat = 0;
  for (int i = 0; i < cijfers.length; i++) {
    som+= cijfers[i];
  }
  resultaat = round(som / 3.0);
  return (int) resultaat;
}

int aantalIncompleteCijfers() {
  int aantal = 0;

  for (int i = 0; i < deelcijfers.length; i++) {
    if ((AANTAL_TOETSEN - deelcijfers[i].length) > 0) {
      aantal++;
    }
  }

  return aantal;
}
