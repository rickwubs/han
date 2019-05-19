class Kaartjesautomaat {
  private String titel;
  private float prijs;
  private float ingeworpenBedrag;
  private float dagtotaal;

  Kaartjesautomaat(String titel, float prijs) {
    this.titel = titel;
    this.prijs = prijs;
    ingeworpenBedrag = 0;
    dagtotaal = 0;
  }

  void werpIn(float bedrag) {
    if (bedrag < 0) {
      println("Er mag geen negatief bedrag worden ingeworpen");
    } else {

      println(bedrag + " ingeworpen");
      ingeworpenBedrag += bedrag;
      if (ingeworpenBedrag >= prijs) {
        println("totaal ingeworpen: " + ingeworpenBedrag);
        println("prijs: " + prijs);
        println("Wisselgeld: " + (ingeworpenBedrag - prijs));
        dagtotaal += prijs;
        ingeworpenBedrag = 0;
        printKaartje();
      }


      println("totaal ingeworpen: " + ingeworpenBedrag);
    }
  }

  void printKaartje() {
    println("======");
    println(titel);
    println("======");
  }

  void leegAutomaat() {
    println("dagtotaal: " + dagtotaal);
    dagtotaal = 0;
  }
}
