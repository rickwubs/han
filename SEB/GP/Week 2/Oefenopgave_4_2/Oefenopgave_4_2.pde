void setup(){
  background(0);
  textAlign(CENTER);
  size(500,500);
}

void draw(){
  begroeting("Harry", width / 4, height / 4);
  begroeting("Marianne", width - width / 4, height / 4);
  begroeting("Lucio", width / 4, height - height / 4);
  begroeting("Maaike", width - width / 4, height - height / 4);
  begroeting("Rick", width / 2, height / 2);
 
}

void begroeting(String naam, float positieX, float positieY){
  text("Hallo " + naam + ", hoe gaat het met je?", positieX, positieY);
}
