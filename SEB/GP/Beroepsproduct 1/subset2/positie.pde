//TODO: cleanup ALLE methoden
int[] voegSelectieToeAanGeselecteerdePosities() {
  switch(aantalKaartenInSelectieArray()) {
  case 0:
    geselecteerdePosities[0] = aangekliktePositie();
    break;
  case 1:
    geselecteerdePosities[1] = aangekliktePositie();
    break;
  case 2:
    geselecteerdePosities[2] = aangekliktePositie();
    break;
  case -1:
    maakGeselecteerdePositiesLeeg();
    println("niet op een kaart geklikt");
    break;
  }
  nGeselecteerdePosities++;

  return geselecteerdePosities;
}

int aantalKaartenInSelectieArray() {
  if (eerstePositieLeeg()) {
    return 0;
  } else if (tweedePositieLeeg()) {
    return 1;
  } else if (derdePositieLeeg()) {
    return 2;
  }
  return -1;
}

boolean eerstePositieLeeg() {
  return geselecteerdePosities[0] == -1;
}

boolean tweedePositieLeeg() {
  return !eerstePositieLeeg() && geselecteerdePosities[1] == -1;
}

boolean derdePositieLeeg() {
  return !eerstePositieLeeg() && ! tweedePositieLeeg() && geselecteerdePosities[2] == -1;
}


int[] maakGeselecteerdePositiesLeeg() {
  for (int i = 0; i < 3; i++) {
    geselecteerdePosities[i] = -1;
  }
  return geselecteerdePosities;
}


int[] berekenCoordinaten(int bordpositie) {
  int[] coordinaten = new int[2];

  switch(bordpositie) {
  case 0:
    coordinaten[0] = xPositieSpeelbord + breedteKaart * 0;
    coordinaten[1] = yPositieSpeelbord + breedteKaart * 0;
    break;
  case 1:
    coordinaten[0] = xPositieSpeelbord + breedteKaart * 1;
    coordinaten[1] = yPositieSpeelbord + breedteKaart * 0;
    break;
  case 2:
    coordinaten[0] = xPositieSpeelbord + breedteKaart * 2;
    coordinaten[1] = yPositieSpeelbord + breedteKaart * 0;
    break;
  case 3:
    coordinaten[0] = xPositieSpeelbord + breedteKaart * 0;
    coordinaten[1] = yPositieSpeelbord + breedteKaart * 1;
    break;
  case 4:
    coordinaten[0] = xPositieSpeelbord + breedteKaart * 1;
    coordinaten[1] = yPositieSpeelbord + breedteKaart * 1;
    break;
  case 5:
    coordinaten[0] = xPositieSpeelbord + breedteKaart * 2;
    coordinaten[1] = yPositieSpeelbord + breedteKaart * 1;
    break;
  case 6:
    coordinaten[0] = xPositieSpeelbord + breedteKaart * 0;
    coordinaten[1] = yPositieSpeelbord + breedteKaart * 2;
    break;
  case 7:
    coordinaten[0] = xPositieSpeelbord + breedteKaart * 1;
    coordinaten[1] = yPositieSpeelbord + breedteKaart * 2;
    break;
  case 8:
    coordinaten[0] = xPositieSpeelbord + breedteKaart * 2;
    coordinaten[1] = yPositieSpeelbord + breedteKaart * 2;
    break;
  }
  return coordinaten;
}

int aangekliktePositie() {
  if (isMuisBinnenSpeelbord()) {
    int rij = rij();
    int kolom = kolom();
    int bordpositie = kolom + rij;
    println("bordpositie: " + bordpositie);
    return bordpositie;
  }
  println("buiten speelbord geklikt");
  return -1;
}

boolean isMuisBinnenSpeelbord() {
  return mouseX > xPositieSpeelbord && mouseX < xPositieSpeelbord + breedteSpeelbord &&
    mouseY > yPositieSpeelbord && mouseY < yPositieSpeelbord + hoogteSpeelbord;
}


int rij() {
  return (mouseX - xPositieSpeelbord) / breedteKaart;
}

int kolom() {
  int aantalKolommen = 3;
  return ((mouseY - yPositieSpeelbord) / hoogteKaart) * aantalKolommen;
}
