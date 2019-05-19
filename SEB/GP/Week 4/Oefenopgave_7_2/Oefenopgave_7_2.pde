String[] boodschappen = {"Brood", "Melk", "Eieren", "Vleeswaren", "Koekjes"};

void setup() {
  drukAf(boodschappen);
}

void drukAf(String[] array) {
  for (int i = 0; i < array.length; i++) {
    println(array[i]);
  }
}
