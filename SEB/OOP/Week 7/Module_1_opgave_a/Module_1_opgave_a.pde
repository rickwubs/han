int[] getallen1 = {1, 2, 3};
int[] getallen2 = {4, 5, 6};

void setup() {
  int[] c = telElementenOp(getallen1, getallen2);
  println(c);
}

int[] telElementenOp(int[] a, int[]b) {
  int[] c = new int[a.length];
  for (int i = 0; i < a.length; i++) {
    c[i] = a[i] + b[i];
  }
  return c;
}
