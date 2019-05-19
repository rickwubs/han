class Damsteen {
  float x, y, d;
  int kleur;
  boolean isGeselecteerd;

  Damsteen(int x, int y, int d, int kleur) {
    this.x = x;
    this.y = y;
    this.d = d;
    this.kleur = kleur;
    this.isGeselecteerd = false;
  }

  void tekenDamsteen() {
    if (isGeselecteerd) {
      stroke(5);
    } else {
      noStroke();
    }
    fill(kleur);
    ellipse(x, y, d, d);
  }
}
