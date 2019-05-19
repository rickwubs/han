int tijdcheck;
int interval = 1000;
int seconden = 0;

void setup() {
  tijdcheck = millis();
}

void draw() {
     
  // hier moet ik dus ">" gebruiken ipv "==" omdat de draw methode blijkbaar 
  // nooit op de gehele seconde (1000ms) een draw() doet.
  // dus: millis() naar seconden geeft nooit een geheel getal.
  if ( millis() > tijdcheck + interval ) {
    background(0);
    tijdcheck = millis();
    seconden++;
    // tekst komt niet in het midden; textSize() geeft niet even grote hoogte + breedte?
    text(seconden, width / 2, height / 2);
  }
}
