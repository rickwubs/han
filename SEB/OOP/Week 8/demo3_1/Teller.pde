class Teller {
  private int waarde;
  private int maximum;
  private float x;
  private float y;
  private float breedte;
  private float hoogte;

  Teller(int maximum, float x, float y, float breedte, float hoogte) {
    this.waarde = 0;
    this.maximum = maximum;
    this.x = x;
    this.y = y;
    this.breedte = breedte;
    this.hoogte = hoogte;
  }

  public void tik() {
    waarde = (waarde + 1) % maximum;
  }

  String geefTijdNotatie() {
    if (waarde < 10) {
      return "0" + str(waarde);
    } else {
      return str(waarde);
    }
  }

  public void tekenTeller() {
    rectMode(CENTER);
    noStroke();
    fill(0);
    rect(x, y, breedte, hoogte);

    fill(255, 0, 0);
    textSize(hoogte);
    textAlign(CENTER);
    float verschuiving = (textAscent() - textDescent()) / 2;
    text(geefTijdNotatie(), x, y + verschuiving);
  }
}
