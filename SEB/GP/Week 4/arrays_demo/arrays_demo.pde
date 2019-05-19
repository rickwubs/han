float grafiekX1, grafiekY1, grafiekX2, grafiekY2;
float stipGrootte;

float[] getallen;

  
void setup(){
  size(450, 300);
  smooth();
  
  grafiekX1 = grafiekY1 = 25;
  grafiekX2 = width - grafiekX1;
  grafiekY2 = height - 2 * grafiekY1;
  stipGrootte = 10;
}

void draw(){
  background(240);
  fill(220);
  stroke(190);
  rectMode(CORNERS);
  rect(grafiekX1, grafiekY1, grafiekX2, grafiekY2);
  
  getallen = loadFloats("data_informatica_opleidingen.txt");
  float stippenAfstand = (grafiekX2 - grafiekX1) / (getallen.length - 1);
  
  for (int i = 0; i < getallen.length; i++) {
    
    float stipX = grafiekX1 + i * stippenAfstand;
    float stipY = grafiekY2 - getallen[i];
    
    if (dist(stipX, stipY, mouseX, mouseY) < stipGrootte / 2) {
      fill(0);
      stroke(0);
      rectMode(CENTER);
      rect(stipX, stipY - 20, 75, 25);
      fill(255);
      stroke(255);
      text(getallen[i], stipX - 22, stipY - 15);
      fill(0);
      stroke(0);
    } else {
      fill(#4393FF);
      stroke(#3A7FDE);
    }
    ellipse(stipX, stipY, stipGrootte, stipGrootte);
  }
}
