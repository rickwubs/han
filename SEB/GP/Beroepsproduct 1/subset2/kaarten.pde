String[] genereerKaarten() {
  int n = 0;
  for (int aantal = 0; aantal < 3; aantal++) {
    for (int kleur = 0; kleur < 3; kleur++) {
      for (int vorm = 0; vorm < 3; vorm++) {
        gedekteKaarten[n] += eigenschappen[0].charAt(aantal);
        gedekteKaarten[n] += eigenschappen[1].charAt(kleur);
        gedekteKaarten[n] += eigenschappen[2].charAt(vorm);
        gedekteKaarten[n] = gedekteKaarten[n].substring(4); // om 'null' weg te krijgen.
        n++;
      }
    }
  }
  return gedekteKaarten;
}

String[] schudDeKaarten() {
  for (int i = 0; i < 100; i++) {
    String temp;
    int randomGetal1 = (int) random(0, gedekteKaarten.length);
    int randomGetal2 = (int) random(0, gedekteKaarten.length);
    temp = gedekteKaarten[randomGetal1];
    gedekteKaarten[randomGetal1] = gedekteKaarten[randomGetal2];
    gedekteKaarten[randomGetal2] = temp;
  }
  return gedekteKaarten;
}

void vulBordMetKaarten() {
  for (int i = 0; i < openKaarten.length; i++) {
    if (openKaarten[i] == null) {
      if (nGedekteKaarten > 0) {
        pakKaartVanStapel();
      }
    }
  }
}

String pakKaartVanStapel() {
  String kaart = gedekteKaarten[nGedekteKaarten - 1];
  for (int i = 0; i < openKaarten.length; i++) {
    if (openKaarten[i] == null) {
      openKaarten[i] = kaart;
      break;
    }
  }
  nGedekteKaarten--;
  return kaart;
}
