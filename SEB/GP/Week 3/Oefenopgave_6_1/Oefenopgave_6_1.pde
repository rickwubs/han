void settings(){
  size(200, 200);
}

void draw(){
  fill(#000000);
  printTafels(1);
  
}

void printTafels(int tafel) {
  int i = 1;
  float yPositie = 15;
  while (i < 10) {
    int antwoord = i * tafel;
    text(antwoord, 10, yPositie);
    yPositie += 15;
    ++i;
  }
}
