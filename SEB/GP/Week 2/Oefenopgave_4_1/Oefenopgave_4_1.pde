void setup(){
  int a = 6;
  int b = 12;
  change(a, b);
  println(a + b);
}

void change(int a, int b){
  a = a * 4;
  b = b * 4;
}

// er wordt 18 afgedrukt ipv de verwachte 72.
// dit komt omdat a en b alleen lokaal gedefinieerd zijn in de functie change.
// om dit aan de passen zouden de variabelen a en b gereturned moeten worden
// en moet dus de return type van de methode aangepast worden naar int.
