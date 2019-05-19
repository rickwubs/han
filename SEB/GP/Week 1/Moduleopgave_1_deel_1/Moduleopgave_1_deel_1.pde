// Moduleopgave 1
// Rick Wubs
// 2019-02-06
  void settings(){
size(500, 200);
  }
// Staven (deze waardes kunnen veranderen)
float staafA = 20.0;
float staafB = 190.0;
float staafC = 150.0;

// hieronder komt jouw code

// zoomfactor berekenen
float zoom(){
  float zoomfactor;
  float maximum = max(staafA, staafB, staafC);
  if (height < maximum) { // alleen berekenen als de hoogte minder is dan de grootste staaf
    zoomfactor = (height / maximum);
  } else {
    zoomfactor = 1;
  }
  return zoomfactor;
}
void draw(){
// Tekstgrootte voor de tekst boven de balken 
float tekstgrootte = 10; 
textSize(tekstgrootte);

// zoomfactor
float zoomfactor = zoom();

// staaf A: tekst, xpositie, ypositie
    // tekst wordt een string, verkregen uit de floating point waarde van de staven, met in dit
    // geval 2 getallen voor de komma en 3 getallen na de komma. (deze zijn momenteel nog hardcoded)
String tekstA = nf(staafA, 2, 3); 
float xA = 10; 
    // balk begint bij de hoogte van het scherm, minus de hoogte van de staaf
    // en de tekstgrootte (zodat zowel de tekst en de staaf op het scherm passen)
float yA = height - (staafA - tekstgrootte) * zoomfactor;  

// breedte + ruimte van de staven
float breedte = (width / 5);  
float ruimte = (breedte / 2); 

// Staaf B: tekst, xpositie, ypositie
String tekstB = nf(staafB, 3, 3); 
float xB = xA + breedte + ruimte; 
float yB = height - (staafB - tekstgrootte) * zoomfactor; 

// Staaf C: tekst, xpositie, ypositie
String tekstC = nf(staafC, 3, 3); 
float xC = xB + breedte + ruimte; 
float yC = height - (staafC - tekstgrootte) * zoomfactor; 

// Lijn: xpositie begin, ypositie begin, xpositie eind, ypositie eind
float xBeginLijn = 0.0;  
float yBeginLijn = height - ((staafA + staafB + staafC) / 3) * zoomfactor; //gemiddelde 3 staven
float xEindLijn = width; 
float yEindLijn = yBeginLijn; 

// zwarte achtergrond
background(0, 0, 0);
// blauwe staaf en tekst
fill(0, 0, 255);
text(tekstA , xA, yA-tekstgrootte);
rect(xA, yA , breedte, staafA);
// groene staaf en tekst
fill(0, 255, 0);
text(tekstB, xB, yB-tekstgrootte);
rect(xB, yB, breedte, staafB);
// rode staaf en tekst
fill(255, 0, 0);
text(tekstC, xC, yC-tekstgrootte);
rect(xC, yC, breedte, staafC);
// rode lijn gemiddelde
stroke(255, 0, 0);
line(xBeginLijn, yBeginLijn, xEindLijn, yEindLijn);
// zoomfunctie geeft anders een rode lijn??
stroke(0, 0, 0);
}
