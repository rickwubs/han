float tegelGrootte = 50;

void setup(){
  size(400, 400);
  background(255);
  strokeWeight(3);
  rectMode(CENTER);
  
  vulSchermMetRijen();
}

// vraag: hoe zorg ik dat ik tegelgrootte kan meegeven aan de functie
// vulSchermMetRijen(tegelGrootte)?
// moet ik deze waarde dan telkens returnen om deze door te geven aan de volgende functie?
