//Moduleopgave_5
//Sam Jansen
//14-2-2019

int RED = #FF0000, YELLOW = #FFFF00, GREEN = #00FF00, BLUE = #0000FF, WHITE = #FFFFFF, BLACK = #000000;
  
  int sizeX = 1000;  //width
  int sizeY = 1000;  //height

  float ZF = (max (sizeX, sizeY / 2)/100); // ZoomFactor for scaling

  int halveHeight = sizeY / 2;
  
  float normaal = 18.5 *ZF;
  float overgewicht = 25 * ZF;
  float obees = 30 * ZF;
  
  float textsizelijn = 20 * (ZF/10);
  float textsizestaaf = 25 * (ZF/10);
  
  float inspring = 10*ZF; // mooimaker om niet direct op 0 te beginnen met schrijven
  
  float LengteSlider = sizeX - (4 * inspring);
  float GewichtSlider = sizeX/2 - inspring;
  
    int sliderhoogte = sizeY/ 16;
  

void settings()  {
  size (sizeX, sizeY);
}




void draw() {
  background (0);
    float BMI = (CalcGewicht(GewichtSlider) / sq(CalcLengte(LengteSlider) / 100) );
    lijnen()  ;
    staaf(BMI);
    sliderbox();
}
 
 
 
void lijnen() {
  //LINES
     fill   (WHITE); 
     stroke (WHITE);
     textSize (textsizelijn);
     
        line (0, halveHeight, sizeX, halveHeight);
     
        text ("obees", inspring, halveHeight -(obees + textAscent()  ));
        line (0, halveHeight - obees , sizeX, halveHeight - obees ); 
        
        text ("overgewicht", inspring, halveHeight - (overgewicht + textAscent()  ));
        line (0, halveHeight - overgewicht, sizeX, halveHeight - overgewicht); 
        
        text ("normaal gewicht", inspring, halveHeight - (normaal + textAscent()  ));
        line (0, halveHeight -normaal, sizeX , halveHeight - normaal); 
        
        text ("ondergewicht", inspring, halveHeight -(normaal - (textAscent() * 2)  ));
}



void staaf (float BMI){
    float breedte = sizeX / 4;

    
      textSize (textsizestaaf);
  
      text ("BMI: "+ (nf(BMI,2,2)), sizeX/2 - breedte/2, halveHeight- ((BMI *ZF)+ (textAscent() /2) )); // text above "staaf" (2DEC)
      
      fill (153,0,76); //RED-isch 
     BMI *= ZF;
      rect (sizeX/2 - breedte/2, halveHeight , breedte, - BMI);
}
  
  
  
void sliderbox() {
  
  // empty sliderboxes + text
  fill   (WHITE); 
  stroke (WHITE);
  
  rect (inspring, halveHeight + (2*sliderhoogte), sizeX - (2*inspring), sliderhoogte);
  text ("Lengte: " + CalcLengte(LengteSlider), inspring, halveHeight + (4*sliderhoogte) - textAscent() );
  
  rect (inspring, halveHeight + (5*sliderhoogte), sizeX - (2*inspring), sliderhoogte);
  text ("Gewicht: " + CalcGewicht(GewichtSlider), inspring, halveHeight + (7*sliderhoogte) - textAscent() );

  // blue sliders
  stroke(BLUE);
  strokeWeight(4);
    line (LengteSlider, halveHeight + (2*sliderhoogte), LengteSlider, halveHeight + (3*sliderhoogte));
    line (GewichtSlider, halveHeight + (5*sliderhoogte), GewichtSlider, halveHeight + (6*sliderhoogte));
  
  // mousepress event
  if (mousePressed) {
     
    // if X-axis between left & richt border sliderbox
      if (  (mouseX >= inspring) && (mouseX <= (sizeX - inspring))  )   {
          
        //if Y-axis between top & bottom sliderbox (*2)
           if (  (mouseY >= halveHeight + (2*sliderhoogte)) && (mouseY <= halveHeight + (3*sliderhoogte))  ) {
              LengteSlider = mouseX;
           } else if  
               (  (mouseY >= halveHeight + (5*sliderhoogte)) && (mouseY <= halveHeight + (6*sliderhoogte))  ) {
               GewichtSlider = mouseX;
           }
      }
  }
} // END sliderbox

float CalcLengte (float  LengteSlider) {
     float Sliderlengte = sizeX - (2* inspring);
     float Lengteschaal = Sliderlengte / 200;
     float  CalcLengte =   ( (LengteSlider - inspring) / Lengteschaal) + 50 ; // starts at 50cm
return CalcLengte;
}


float CalcGewicht (float  GewichtSlider) {
    float Sliderlengte = sizeX - (2* inspring);
    float Gewichtschaal = Sliderlengte / 190;
    float  CalcGewicht =   ( (GewichtSlider - inspring) / Gewichtschaal) + 10 ; // starts at 10 kg
return CalcGewicht;
}
