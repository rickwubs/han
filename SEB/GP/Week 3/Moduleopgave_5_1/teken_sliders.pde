void tekenSliders(float xPositie, int kleur, int sliderHoogte) {
  fill(kleur);
  stroke(kleur);
  
  text("Lengte: " + berekenLengte(), xPositie, schermHoogte / 2);
  rect(xPositie, schermHoogte / 2 + sliderHoogte, schermBreedte - xPositie * 2, sliderHoogte);
//}


  // mousepress event
  if (mousePressed) {
     
    // if X-axis between left & richt border sliderbox
      if (  (mouseX >= xPositie) && (mouseX <= (schermBreedte - xPositie))  )   {
          
        //if Y-axis between top & bottom sliderbox (*2)
      //     if (  (mouseY >= height / 2 + (2*sliderhoogte)) && (mouseY <= height / 2 + (3*sliderhoogte))  ) {
        //      LengteSlider = mouseX;
          // } else if  
            //   (  (mouseY >= height / 2 + (5*sliderhoogte)) && (mouseY <= height / 2 + (6*sliderhoogte))  ) {
              // GewichtSlider = mouseX;
           //}
      //}
  //}
//}
