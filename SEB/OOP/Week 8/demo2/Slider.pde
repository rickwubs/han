class Slider {
  float x, y, breedte, hoogte;
  int nPosities;
  int positie;

  public Slider() {
    breedte = 200;
    hoogte = 50;
    x = (width - breedte) / 2;
    y = 50;
    nPosities = 5;
  }

  private int bepaalSliderPositie() {
    float blokjeBreedte = breedte / nPosities;
    if (mouseX < x) {
      return 0;
    } else if (mouseX >= breedte + x) {
      return nPosities - 1;
    } else {
      return floor((mouseX - x) / blokjeBreedte);
    }
  }
  public void tekenSlider() {
    this.positie = bepaalSliderPositie();
    float blokjeBreedte = breedte / nPosities;
    noStroke();
    fill(255);
    rect(x, y, breedte, hoogte);
    fill(#2257F0);
    rect(x + positie * blokjeBreedte, y, blokjeBreedte, hoogte);
  }
}
