void setup() {
  int[] waarden = { 6, 5, 8, 3, 25, 4, 13, 21, 11, 9};
  float gem = berekenGemiddelde(waarden);                      
  println("Er zijn " + aantalGroterDanGemiddelde(waarden) + 
          " groter dan het gemiddelde van " + gem);
  int[] groter =  groterDanGemiddelde(waarden);
  println(groter);
} 

float berekenGemiddelde(int[] waarden) {                
  float som = 0.0;
  for (int i = 0; i < waarden.length; i++) { 
    som += waarden[i];         
  }
  return som/waarden.length;         
}

int aantalGroterDanGemiddelde(int[] waarden) {    
  float gemiddelde = berekenGemiddelde(waarden);
  int aantal = 0;
  for (int i = 0; i < waarden.length; i++) {  
    if (gemiddelde < waarden[i]) {     
      aantal++;
    }
  }
  return aantal;
}

int[] groterDanGemiddelde(int[] waarden) {
  float gemiddelde = berekenGemiddelde(waarden);
  int aantal = aantalGroterDanGemiddelde(waarden);
  int[] resultaat = new int[aantal];
  int index = 0;
  for(int i=0; i<waarden.length; i++){
    if (gemiddelde < waarden[i]) {     
      resultaat[index] = waarden[i];
      index ++;
    }
  }
  return resultaat;
}