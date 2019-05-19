void setup() {
  
  println(aantalRollenBehangNodig(225, 550, 1000, 52, 4));

}

int aantalRollenBehangNodig(int muurHoogteInCm, int muurBreedteInCm, int rolLengteInCm, int rolBreedteInCm, int patroonHoogteInCm){ 
  int aantalStroken = aantalStrokenPerRol(rolLengteInCm, muurHoogteInCm, patroonHoogteInCm);
  int aantalCmAlBehangen = 0;
  int aantalRollen = 0;
   
  while (aantalCmAlBehangen < muurBreedteInCm) {
    aantalCmAlBehangen += rolBreedteInCm * aantalStroken;
    aantalRollen++;
  }
   
  return aantalRollen;
}

// berekent het aantal gehele stroken dat je uit 1 rol kunt halen.
// patroonhoogte wordt opgeteld bij de muurhoogte, omdat je uit moet gaan van
// de maximale hoeveelheid extra rol die je nodig hebt om verspringing te voorkomen.
// dit maximum is lim(patroonhoogte), voor het gemak dus gelijk aan patroonhoogte.
int aantalStrokenPerRol(int rolLengte, int muurHoogte, int patroonhoogte) {
  return rolLengte / (muurHoogte + patroonhoogte);
}
