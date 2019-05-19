class Vierkant {
  int x, y, grootte, kleur;

  Vierkant() {
    this.x = int(random(this.grootte, width - this.grootte));
    this.y = int(random(this.grootte, height - this.grootte));
    this.grootte = int(random(10, 40));
    this.kleur = #00ff00;
  }

  Vierkant(int x, int y, int grootte, int kleur) {
    this.x = x;
    this.y = y;
    this.grootte = grootte;
    this.kleur = kleur;
  }

  void muisKlik() {
    int x = this.kleur;
    if (this.isMuisInVierkant()) {
      this.kleur = x;
    } else {
      this.kleur = #ffffff;
    }
  }

  boolean isMuisInVierkant() {
    return (mouseX >= x && mouseX < x + grootte &&
      mouseY >= y && mouseY < y + grootte);
  }

  void teken() {
    noStroke();
    fill(kleur);
    rect(x, y, grootte, grootte);
  }
}
