//kleuren
static final int ZWART = 0;
static final int GRIJS = 50;
static final int WIT = 255;
static final int ROOD = #ff0000;
static final int GROEN = #00ff00;
static final int BLAUW = #0000ff;
//afmetingen scherm
int schermBreedte = 500;
int schermHoogte = 500;
// afmetingen speelbord
int xPositieSpeelbord = schermBreedte / 5;
int yPositieSpeelbord = schermHoogte / 5;
int breedteSpeelbord = 3 * xPositieSpeelbord;
int hoogteSpeelbord = 3 * yPositieSpeelbord;
// afmetingen kaart
int xPositieKaart = xPositieSpeelbord;
int yPositieKaart = yPositieSpeelbord;
int breedteKaart = yPositieSpeelbord;
int hoogteKaart = yPositieSpeelbord;
// afmetingen figuren
int breedteVorm = breedteKaart / 2;
int hoogteVorm = hoogteKaart / 7;
// kaarten
String[] eigenschappen = {"123", "rgb", "RED"};
String[] gedekteKaarten = new String[27];
String[] openKaarten = new String[9];
String[] geselecteerdeKaarten = new String[3];
int nGedekteKaarten = 27;
// positie
int[] geselecteerdePosities = new int[3];
int nGeselecteerdePosities = 0;
// sets
int aantalSetsVanSpeler = 0;


void settings() {
  initializeerSpel();
}

void draw() {
  tekenBord();
  speelSpel();
}

void mouseClicked() {
      voegSelectieToeAanGeselecteerdePosities();
 


  println(geselecteerdePosities);
  println(nSetsOpTafel() + " sets op tafel");
  println("er zijn " + nGedekteKaarten + " kaarten over in het spel");
}
