int testGetal = 5;
int[] testGetallen = {5, 5};

void setup() {
  doeKeerTwee(testGetal);
  doeKeerTwee(testGetallen);
  
  println(testGetal);
  println(testGetallen);
}

void doeKeerTwee(int getal) {
  getal = 2 * getal;
}

void doeKeerTwee(int[] getallen) {
  for (int i = 0; i < getallen.length; i++) {
    getallen[i] = 2 * getallen[i];
  }
}

// globale variabele testGetal wordt niet aangepast
// globale variabele testGetallen wordt wel aangepast
