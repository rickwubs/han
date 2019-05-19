class Damsteen {
  private int x;
  private int y;
  private int diameter;
  private int kleur;
  private boolean isGeselecteerd;

  public Damsteen(int x, int y, int diameter, int kleur) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.kleur = kleur;
    this.isGeselecteerd = false;
  }

  public void tekenDamsteen() {
    if (isGeselecteerd) {
      stroke(0);
      strokeWeight(5);
    } else {
      noStroke();
    }
    fill(kleur);
    ellipse(x, y, diameter, diameter);
  }

  public void setIsGeselecteerd(boolean isGeselecteerd) {
    this.isGeselecteerd = isGeselecteerd;
  }
}
