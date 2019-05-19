void haalSetVanSpeelbord() {
  for (int i = 0; i < 3; i++) {
    openKaarten[geselecteerdePosities[i]] = null;
  }
}

void krijgKaartenBijPosities() {
  for (int i = 0; i < 3; i++) {
    geselecteerdeKaarten[i] = openKaarten[geselecteerdePosities[i]];
  }
}

void maakGeselecteerdeKaartenLeeg() {
  for (int i = 0; i < 3; i++) {
    geselecteerdeKaarten[i] = null;
  }
}

int nSetsOpTafel() {
  int aantalSetsOpTafel = 0;
  String[] kandidaatset = new String[3];
  for (int i = 0; i < openKaarten.length; i++) {
    kandidaatset[0] = openKaarten[i];
    for (int j = i + 1; j < openKaarten.length; j++) {
      kandidaatset[1] = openKaarten[j];
      for (int k = j + 1; k < openKaarten.length; k++) {
        kandidaatset[2] = openKaarten[k];
        if (isGeenLegeKaartOpTafel(kandidaatset) && isSet(kandidaatset)) {
          aantalSetsOpTafel++;
        }
      }
    }
  }
  return aantalSetsOpTafel;
}

boolean isGeenLegeKaartOpTafel(String[] kandidaatset) {
  return ( kandidaatset[0] != null && kandidaatset[1] != null && kandidaatset[2] != null );
}

boolean isSet(String[] kandidaatset) {
  int aantal = 0;
  if (!drieKeerDezelfdeKaart(kandidaatset)) {
    for (int i = 0; i < 3; i++) {
      char kaart1 = kandidaatset[0].charAt(i);
      char kaart2 = kandidaatset[1].charAt(i);
      char kaart3 = kandidaatset[2].charAt(i);
      if (alleKaartenGelijk(kaart1, kaart2, kaart3) || alleKaartenVerschillend(kaart1, kaart2, kaart3))
      {
        aantal++;
      }
    }
  }


  return (aantal == 3);
}

boolean drieKeerDezelfdeKaart(String[] kandidaatset) {
  return (kandidaatset[0] == kandidaatset[1]) || (kandidaatset[1] == kandidaatset[2]);
}

boolean alleKaartenGelijk(char kaart1, char kaart2, char kaart3) {
  return ((kaart1 == kaart2) && (kaart2 == kaart3) && (kaart1 == kaart3));
}

boolean alleKaartenVerschillend(char kaart1, char kaart2, char kaart3) {
  return ((kaart1 != kaart2) && (kaart2 != kaart3) && (kaart3 != kaart1));
}
