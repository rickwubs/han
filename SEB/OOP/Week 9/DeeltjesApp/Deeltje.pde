class Deeltje {

  PApplet app;
  private float x, y, vx, vy, ax, ay;
  public static final float GROOTTE = 10;

  public Deeltje(PApplet app, float x, float y, float vx, 
    float vy, float ax, float ay) {
    this.app = app;
    this.x = x;
    this.y = y;
    this.vx = vx;
    this.vy = vy;
    this.ax = ax;
    this.ay = ay;
  }

  public void zetStap() {
    pasVersnellingenToe();
    pasSnelheidToe();
  }

  public void zetStil() {
    vx = vy = ax = ay = 0;
  }

  public boolean staatStil() {
    return (vx == 0 && vy == 0 && ax == 0 && ay == 0);
  }

  private void pasVersnellingenToe() {
    vx += ax;
    vy += ay;
  }

  private void pasSnelheidToe() {
    x += vx;
    y += vy;
  }

  public void tekenDeeltje() {
    app.noStroke();
    app.fill(255);
    app.ellipse(x, y, GROOTTE, GROOTTE);
  }

  public float getY() {
    return this.y;
  }
}
