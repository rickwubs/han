float[] cijfers = { 3.3, 4.5, 7.2, 5.3, 9.0, 2.3 }; // min 2.3, max 9.0

float[] lijst1 = { -8.0, 4.5, 1.2, -5.6, -9.1, 4 }; // min -9.1, max 4.5
float[] lijst2 = { -0.4, -0.7, -3.5, -1.9, -8.0 }; // min -8.0, max -0.4

void setup() {
  float hoogste = geefHoogste(cijfers);
  float laagste = geefLaagste(cijfers);
  println("Het hoogste cijfer is: " + hoogste);
  println("Het laagste cijfer is: " + laagste);
  
  hoogste = geefHoogste(lijst1);
  laagste = geefLaagste(lijst1);
  println("Het hoogste cijfer is: " + hoogste);
  println("Het laagste cijfer is: " + laagste);
  
  hoogste = geefHoogste(lijst2);
  laagste = geefLaagste(lijst2);
  println("Het hoogste cijfer is: " + hoogste);
  println("Het laagste cijfer is: " + laagste);
}
