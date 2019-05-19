// vult het scherm met rijen tegels totdat het hele scherm gevuld is.
void vulSchermMetRijen() {
  float tegelY = tegelGrootte / 2;
  while (tegelY < height) {
    tekenRij(tegelY);
    tegelY += tegelGrootte;
  }
}

// tekent een rij van tegels.
void tekenRij(float y) {
  float tegelX = tegelGrootte / 2;
  while (tegelX < width) {
    tekenTegel(tegelX, y, tegelGrootte);
    tegelX += tegelGrootte;
  }
}

// tekent een tegel van vierkanten binnen een vierkant.
void tekenTegel(float x, float y, float grootte) {
  while (grootte > 0) {
    tekenVierkant(x, y, grootte);
    grootte -= 10;
  }
}

// tekent een vierkant met random kleur.
void tekenVierkant(float x, float y, float grootte) {
  fill(random(255), random(255), random(255));
  rect(x, y, grootte, grootte);
}
