int[][] hetVeld = {
  {1, 6, 3}, 
  {3, 2, 9}, 
};

void setup() {
  println(doeFunctie(hetVeld, 1));
}

int doeFunctie(int[][] a, int b) {
  int c = 0;
  int[] d = a[b]; // {3, 2, 9}
  for (int i = 0; i < d.length; i++) {
    c += d[i]; // 0 + 3, 3 + 2, 5 + 9 -> 14
  }
  return c; // 14
}

// ArrayIndexOutOfBoundsException

// variabelen zijn alleen lokaal gedefinieerd
