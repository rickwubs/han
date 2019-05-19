int a = 4;
int b = 7;

void setup() {
  println("Setup: " + knutsel(a, b));
}

int knutsel(int b, int a) {
  println("Knutsel: " + a);
  println("Knutsel: " + b);
  return kwispel(a, 2*b) + b;
}

int kwispel(int a, int b) {
  println("Kwispel: " + a);
  println("Kwispel: " + b);
  return a - b;
}