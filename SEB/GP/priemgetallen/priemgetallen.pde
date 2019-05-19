void setup() {
  int maximaleGetal = 1000;
  printPriemgetallen(maximaleGetal);
}

void printPriemgetallen(int maximaleGetal) {
    for (int huidigGetal = 2; huidigGetal < maximaleGetal; huidigGetal++) {
    if (isEenPriemgetal(huidigGetal)) {
      println(meldPriemgetal(huidigGetal));
    }
  }
}

String meldPriemgetal(int huidigGetal) {
  return huidigGetal + " is een priemgetal";
}

boolean isEenPriemgetal(int huidigGetal) {
  for (int deler = 2; deler < huidigGetal; deler++) {
    if (isDeelbaar(huidigGetal, deler)) {
      return false;
    }
  }
  return true;
}

boolean isDeelbaar(int huidigGetal, int kandidaat) {
  return huidigGetal % kandidaat == 0;
}
