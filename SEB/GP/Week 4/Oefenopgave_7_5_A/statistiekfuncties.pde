float geefHoogste(float[] floatArray) {
  float waarde;
  float max = -3.40282347E+38;
  
  for (int i = 0; i < floatArray.length; i++) {
    waarde = floatArray[i];
    if (waarde > max) {
      max = waarde;
    }
  }
  return max;
}

float geefLaagste(float[] floatArray) {
  float waarde;
  float min = 3.40282347E+38;
  
  for (int i = 0; i < floatArray.length; i++) {
    waarde = floatArray[i];
    if (waarde < min) {
      min = waarde;
    }
  }
  return min;
}
