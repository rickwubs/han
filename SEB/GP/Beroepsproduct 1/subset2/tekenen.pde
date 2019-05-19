void tekenBord() {
  rect(xPositieSpeelbord, yPositieSpeelbord, breedteSpeelbord, hoogteSpeelbord);
  for (int i = 0; i < openKaarten.length; i++) {
    tekenKaartOfLegePlek(openKaarten[i], i);
  }
  fill(WIT);
  rect(xPositieSpeelbord, yPositieSpeelbord + hoogteSpeelbord + 10, breedteSpeelbord, 20);
  fill(ZWART);
  text("aantal sets op tafel: " + nSetsOpTafel(), xPositieSpeelbord + 100, yPositieSpeelbord + hoogteSpeelbord + 25);
}

void tekenEindeSpelTekst() {
  fill(WIT);
  rect(xPositieSpeelbord, yPositieSpeelbord + hoogteSpeelbord + 40, breedteSpeelbord, 20);
  fill(ZWART);
  text("Spel afgelopen. Aantal sets: " + aantalSetsVanSpeler, xPositieSpeelbord + 100, yPositieSpeelbord + hoogteSpeelbord + 55);
}

void tekenKaartOfLegePlek(String kaart, int bordpositie) {
  if (kaart == null) {
    tekenLegeKaart(bordpositie);
  } else {
    tekenKaart(kaart, bordpositie);
  }
}

void tekenLegeKaart(int bordpositie) {
  int[] coordinaten = berekenCoordinaten(bordpositie);
  int x = coordinaten[0];
  int y = coordinaten[1];
  fill(WIT);
  rect(x, y, breedteKaart, hoogteKaart);
}

void tekenKaart(String kaart, int bordpositie) {
  int[] coordinaten = berekenCoordinaten(bordpositie);
  int x = coordinaten[0];
  int y = coordinaten[1];
  int kleur = WIT;
  if (kaartGeselecteerd(bordpositie)) {
      kleur = GRIJS;
  } else {
    kleur = WIT;
  }
  fill(kleur);
  rect(x, y, breedteKaart, hoogteKaart);
  fill(ZWART);
  textAlign(CENTER);
  tekenFiguren(kaart, x, y);
}

boolean kaartGeselecteerd(int bordpositie) {
  return geselecteerdePosities[0] == bordpositie || geselecteerdePosities[1] == bordpositie || geselecteerdePosities[2] == bordpositie;
}

//TODO: cleanup + alle onderliggende methoden;
void tekenFiguren(String kaart, int x, int y) {
  switch(bepaalTypeFiguren(kaart)) {
  case 'R':
    tekenRechthoeken(kaart, x, y);
    break;
  case 'E':
    tekenEllipsen(kaart, x, y);
    break;
  case 'D':
    tekenDriehoeken(kaart, x, y);
    break;
  }
}

void tekenRechthoeken(String kaart, int x, int y) {
  int xPos = x + breedteKaart / 4;
  int yPos = hoogteVorm;
  switch(bepaalAantalFiguren(kaart)) {
  case '1':
    tekenRechthoek(kaart, xPos, y + yPos * 3);
    break;
  case '2':
    tekenRechthoek(kaart, xPos, y + yPos * 2);
    tekenRechthoek(kaart, xPos, y + yPos * 4);
    break;
  case '3':
    tekenRechthoek(kaart, xPos, y + yPos * 1);
    tekenRechthoek(kaart, xPos, y + yPos * 3);
    tekenRechthoek(kaart, xPos, y + yPos * 5);
    break;
  }
}

void tekenEllipsen(String kaart, int x, int y) {
  int xPos = x + breedteKaart / 4;
  int yPos = hoogteVorm;
  switch(bepaalAantalFiguren(kaart)) {
  case '1':
    tekenEllipse(kaart, xPos, y + yPos * 3);
    break;
  case '2':
    tekenEllipse(kaart, xPos, y + yPos * 2);
    tekenEllipse(kaart, xPos, y + yPos * 4);
    break;
  case '3':
    tekenEllipse(kaart, xPos, y + yPos * 1);
    tekenEllipse(kaart, xPos, y + yPos * 3);
    tekenEllipse(kaart, xPos, y + yPos * 5);
    break;
  }
}

void tekenDriehoeken(String kaart, int x, int y) {
  int xPos = x + breedteKaart / 4;
  int yPos = hoogteVorm;
  switch(bepaalAantalFiguren(kaart)) {
  case '1':
    tekenDriehoek(kaart, xPos, y + yPos * 4);
    break;
  case '2':
    tekenDriehoek(kaart, xPos, y + yPos * 3);
    tekenDriehoek(kaart, xPos, y + yPos * 5);
    break;
  case '3':
    tekenDriehoek(kaart, xPos, y + yPos * 2);
    tekenDriehoek(kaart, xPos, y + yPos * 4);
    tekenDriehoek(kaart, xPos, y + yPos * 6);
  }
}

void tekenRechthoek(String kaart, int x, int y) {
  fill(bepaalKleurFiguren(kaart));
  rect(x, y, breedteVorm, hoogteVorm);
}

void tekenEllipse(String kaart, int x, int y) {
  ellipseMode(CORNER);
  fill(bepaalKleurFiguren(kaart));
  ellipse(x, y, breedteVorm, hoogteVorm);
}

void tekenDriehoek(String kaart, int x, int y) {
  fill(bepaalKleurFiguren(kaart)); 
  tekenSimpeleDriehoek(x, y);
}

char bepaalTypeFiguren(String kaart) {
  return kaart.charAt(2);
}

char bepaalAantalFiguren(String kaart) {
  return kaart.charAt(0);
}

int bepaalKleurFiguren(String kaart) {
  int kleur = 0;
  switch(kaart.charAt(1)) {
  case 'r':
    kleur = #ff0000;
    break;
  case 'g':
    kleur = #00ff00;
    break;
  case 'b':
    kleur = #0000ff;
    break;
  }
  return kleur;
}

void tekenSimpeleDriehoek(int x, int y) {
  triangle(x, y, x + breedteVorm / 2, y - hoogteVorm, x + breedteVorm, y);
}
