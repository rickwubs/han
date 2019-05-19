void tekenDiagram(float BMI, int diagramKleur) {
  float breedteDiagram = schermBreedte / 4;
  fill(wit);
  stroke(wit);
  text("BMI: " + BMI, schermBreedte / 2 - breedteDiagram / 2, schermHoogte / 2 + tekstGrootte);
  fill(diagramKleur);
  textSize(tekstGrootte);

  
  fill(rood);
  stroke(rood);
  rect(schermBreedte / 2 - breedteDiagram / 2, schermHoogte / 2, breedteDiagram, -BMI * berekenZoomfactor());
}
