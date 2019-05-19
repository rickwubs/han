Slider slider;

void setup() {
  size(300, 200);
  background(0);
  
  slider = new Slider();
}

void draw() {
  int positie = slider.bepaalSliderPositie();
  slider.tekenSlider();
}
