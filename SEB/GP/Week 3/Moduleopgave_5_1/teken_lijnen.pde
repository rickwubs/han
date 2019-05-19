void tekenLijnenMetTekst(int lijnkleur, float tekstBeginPositie, float xPositie, float yPositie) {
  fill(lijnkleur);
  stroke(lijnkleur);
  textSize(tekstGrootte);
  
  text("obees", tekstBeginPositie, yPositie - obees);
  line(xPositie, yPositie - obees, schermBreedte, yPositie - obees);
  
  text("overgewicht", tekstBeginPositie, yPositie - overgewicht);
  line(xPositie, yPositie - overgewicht, schermBreedte, yPositie - overgewicht);
  
  text("normaal gewicht", tekstBeginPositie, yPositie - normaalGewicht);
  line(xPositie, yPositie - normaalGewicht, schermBreedte, yPositie - normaalGewicht);
  
  text("ondergewicht", tekstBeginPositie, yPositie - ondergewicht);
  line(xPositie, yPositie - ondergewicht, schermBreedte, yPositie - ondergewicht);
  
  text("zwaar ondergewicht", tekstBeginPositie, yPositie);
  line(xPositie, yPositie, schermBreedte, yPositie);
}
