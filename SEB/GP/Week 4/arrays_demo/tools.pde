int[] loadInts(String bestandsNaam){
  String[] StringArray = loadStrings(bestandsNaam);
  int[] intArray = new int[StringArray.length];
  
  for (int i=0; i < StringArray.length; i++){
    intArray[i] = int(StringArray[i]);
  }
  
 return intArray;
}


float[] loadFloats(String bestandsNaam){
  String[] StringArray = loadStrings(bestandsNaam);
  float[] floatArray = new float[StringArray.length];
  for (int i=0; i < StringArray.length; i++){
    floatArray[i] = float(StringArray[i]);
  }
 return floatArray;
}
