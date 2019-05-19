int sliderPositie;
final float sliderX = 70;
final float sliderY = 100;
final float sliderBreedte = 300;
final float sliderHoogte = 50;
final int sliderNPosities = 4;

void setup(){
  size(400,400);
}

void draw(){
  background(0);
  sliderPositie = bepaalPositie(sliderX, sliderBreedte, sliderNPosities);
  tekenSlider(sliderX, sliderY, sliderBreedte, sliderHoogte, sliderPositie, sliderNPosities);
  text(sliderPositie, sliderX, sliderY + sliderHoogte + 25);
}
