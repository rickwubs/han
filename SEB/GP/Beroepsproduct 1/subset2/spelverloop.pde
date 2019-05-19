void initializeerSpel() {
  size(schermBreedte, schermHoogte);
  genereerKaarten();
  schudDeKaarten();
  maakGeselecteerdePositiesLeeg();
  vulBordMetKaarten();
}

void speelSpel() {
  if (geenKaartenMeer() || geenSetsMeerOpTafel()) {
    tekenEindeSpelTekst();
  } else {
    if (nGeselecteerdePosities == 3) {
      krijgKaartenBijPosities();
      println(geselecteerdeKaarten);
      if (isSet(geselecteerdeKaarten)) {
        haalSetVanSpeelbord();
        maakGeselecteerdePositiesLeeg();
        maakGeselecteerdeKaartenLeeg();
        nGeselecteerdePosities = 0;
        ++aantalSetsVanSpeler;
        vulBordMetKaarten();
        println("je hebt een set! Totaal aantal sets: " + aantalSetsVanSpeler);
        println("er zijn " + nGedekteKaarten + " kaarten over in het spel");
      } else {
        maakGeselecteerdePositiesLeeg();
        maakGeselecteerdeKaartenLeeg();
        nGeselecteerdePosities = 0;
        println("helaas, dit is geen set");
      }
    }
  }
}

boolean geenSetsMeerOpTafel() {
  return nSetsOpTafel() == 0;
}

boolean geenKaartenMeer() {
  return geenKaartenMeerInDeck() && geenKaartenMeerOpTafel();
}

boolean geenKaartenMeerInDeck() {
  return nGedekteKaarten == 0;
}

boolean geenKaartenMeerOpTafel() {
  int aantal = 9;
  for (int i =0; i < openKaarten.length; i++) {
    if (openKaarten[i] == null) {
      aantal--;
    }
  }
  return aantal == 0;
}
