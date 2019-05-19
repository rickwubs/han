String[] jongensnamen = {"jongens", "Liam", "Sam", "Lucas", "Luuk", "Noah"};
String[] meisjesnamen = {"meisjes", "Emma", "Julia", "Sophie", "Anna", "Mila"};
void setup() {
  drukTop5Af(jongensnamen);
  drukTop5Af(meisjesnamen);
}
// de naam van de variabele valt niet af te drukken?
void drukTop5Af(String[] array) {
  println("Top 5 " + array[0] +":");
  for (int i = 1; i < 5; i++) {
    println("[" + (i + 1) + "] " + array[i]);
  }
}
