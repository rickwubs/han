Damsteen[] damstenen = new Damsteen[4];

void setup() {
  damstenen[0] = new Damsteen(10, 10, 9, 0);
  damstenen[1] = new Damsteen(20, 10, 9, 0);
  damstenen[2] = new Damsteen(30, 10, 9, 255);
  damstenen[3] = new Damsteen(40, 10, 9, 255);
  damstenen[2].setIsGeselecteerd(true);
}

void draw() {
  for (int i = 0; i < damstenen.length; i++) {
    damstenen[i].tekenDamsteen();
  }
}
