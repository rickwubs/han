void setup() {
  int[] waarden = {6, 5, 8, 3, 25, 4, 13, 21, 11, 9};
  float gem = berekenGemiddelde(waarden);
  println("Er zijn " + aantalGroterDanGemiddelde(waarden) + 
          " groter dan het gemiddelde van " + gem);
  int[] groter = groterDanGemiddelde(waarden);
  println(groter);
}

int berekenGemiddelde(int[] array) {
  int totaal = 0;
  for (int i = 0; i < array.length; i++) {
    totaal += array[i];
  }
  int gemiddelde = totaal / array.length;
  return gemiddelde;
}

int aantalGroterDanGemiddelde(int[] array) {
  int gemiddelde = berekenGemiddelde(array);
  int resultaat = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] > gemiddelde) {
      resultaat++;
    }
  }
  return resultaat;
}

int[] groterDanGemiddelde(int[] array) {
  int gemiddelde = berekenGemiddelde(array);
  int[] resultaat = new int[aantalGroterDanGemiddelde(array)];
  int j = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] > gemiddelde) {
      resultaat[j] = array[i];
      j++;
    }
  }
  return resultaat;
}
