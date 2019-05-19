Klok deKlok;

void setup() {
  size(400, 300);
  background(255);

  deKlok = new Klok(150, 100, 200);
  deKlok.setTijd(23, 58);
  deKlok.tik();
  deKlok.tik();
  deKlok.tekenKlok();
}

void draw() {
}
