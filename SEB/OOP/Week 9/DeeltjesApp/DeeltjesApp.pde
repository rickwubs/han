private final float G = 0.2f;
ArrayList<Deeltje> deeltjesLijst = new ArrayList<Deeltje>();

public void setup() {
  size(400, 400);
  background(0);
}

public void draw() {
  background(0);

  for (int i = 0; i < deeltjesLijst.size(); i++) {
    Deeltje d = deeltjesLijst.get(i);
    d.zetStap();
    d.tekenDeeltje();

    if (isBenedenHetScherm(d)) {
      deeltjesLijst.remove(i);
    }
  }
}

public void mousePressed() {
  Deeltje d = new Deeltje(this, mouseX, mouseY, random(-2, 2), -5, 0, G);
  deeltjesLijst.add(d);
  println(deeltjesLijst.size());
}

private boolean isBenedenHetScherm(Deeltje d) {
  return (d.getY() - Deeltje.GROOTTE) > height;
}
