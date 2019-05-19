void setup(){
  float getal1 = 7.56;
  float getal2 = 7.498;
  float getal3 = 4.999;
  float getal4 = -2.0001;
  
  String tekst1 = formatteer(getal1);
  println(tekst1);
  
  String tekst2 = formatteer(getal2);
  println(tekst2);
  
  String tekst3 = formatteer(getal3);
  println(tekst3);
  
  String tekst4 = formatteer(getal4);
  println(tekst4);
}

String formatteer(float getal) {
  return String.format("%.1f", getal);
}
