package les07.klokineclipse;

import processing.core.PApplet;

public class KlokApp extends PApplet {

	public static void main(String[] args) {
		PApplet.main(new String[] { "les07.klokineclipse.KlokApp" });
	}

	Klok deKlok;

	public void settings() {
		size(400, 300);
	}

	public void setup() {
		background(0);
		deKlok = new Klok(150, 100, 200, this);
		deKlok.setTijd(23, 59);
		deKlok.tekenKlok();
	}

	public void draw() {
		deKlok.tik();
		deKlok.tekenKlok();
	}
}
