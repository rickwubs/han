void settings() {
  size(schermBreedte, schermHoogte);
}

void draw() {
  background(zwart);
  tekenLijnenMetTekst(wit, 10, 0, schermBreedte / 2);
  tekenDiagram(berekenBMI(84, 183), rood);
  tekenSliders(50, wit, 50);
}


  
