void setup() {
  Kaartjesautomaat automaat = new Kaartjesautomaat("The Lion King", 16.00);
  
  automaat.werpIn(5);
  automaat.werpIn(-5);
  automaat.werpIn(0.25);
  automaat.werpIn(11);
  
  automaat.leegAutomaat();
}
