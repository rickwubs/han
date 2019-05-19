int[] lijst1 = {1, 2, 3};
int[] lijst2 = {4, 5, 6, 7};

void setup() {
  println(maakMaxArray(lijst1, lijst2));
}

int[] maakMaxArray(int[] lijst1, int[] lijst2) {
  int length = max(lijst1.length, lijst2.length);
  int[] lijst3 = new int[length];

  for (int i = 0; i < length; i++) {
    if (i < lijst1.length) {
      if (i < lijst2.length) {
        lijst3[i] = max(lijst1[i], lijst2[i]);
      } else {
        lijst3[i] = lijst1[i];
      }
    } else {
      lijst3[i] = lijst2[i];
    }
  }

  return lijst3;
}
