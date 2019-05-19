void setup() {
  
  println(aantalRollenBehangNodig(225, 550, 1000, 52));

}

int aantalRollenBehangNodig(int muurHoogteInCm, int muurBreedteInCm, int rolLengteInCm, int rolBreedteInCm){ 
  int aantalStroken = aantalStrokenPerRol(rolLengteInCm, muurHoogteInCm);
  int aantalCmAlBehangen = 0;
  int aantalRollen = 0;
   
  while (aantalCmAlBehangen < muurBreedteInCm) {
    aantalCmAlBehangen += rolBreedteInCm * aantalStroken;
    aantalRollen++;
  }
   
  return aantalRollen;
}

// berekent het aantal gehele stroken dat je uit 1 rol kunt halen.
int aantalStrokenPerRol(int rolLengte, int muurHoogte) {
  return rolLengte / muurHoogte;
}
