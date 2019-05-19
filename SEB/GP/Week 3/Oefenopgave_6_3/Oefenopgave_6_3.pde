final int ZIJDE = 15;
final int AANTAL = 15;

int rood = #FF0000;
int wit = #FFFFFF;

void setup(){
  size(350, 350);
  background(wit);
}

void draw(){
  tekenGrootVierkant(ZIJDE, AANTAL);
}

void tekenGrootVierkant(int zijde, int aantal) {
  float tegelY = zijde / 2;
  int aantalVierkantjes = 0;
  while (aantalVierkantjes < aantal) {
    tekenRij(tegelY, zijde, aantal);
    tegelY += zijde;
    aantalVierkantjes++;
  }
}

void tekenRij(float y, int zijde, int aantal) {
  float tegelX = zijde / 2;
  int aantalVierkantjes = 0;
  while (aantalVierkantjes < aantal) {
    tekenTegel(tegelX, y, zijde);
    tegelX += zijde;
    aantalVierkantjes++;
  }
}

void tekenTegel(float x, float y, float zijde) {
fill(rood);
  rect(x, y, zijde, zijde);
}
