package les07.klokineclipse;

import processing.core.PApplet;

public class Klok {
	private Teller minutenTeller;
	private Teller urenTeller;
	
	public Klok(float x, float y, float breedte, PApplet p) {
		float hoogte = breedte * 0.4f;
		urenTeller = new Teller(24, x, y, breedte / 2, hoogte, p);
		minutenTeller = new Teller(60, x + breedte / 2, y, breedte / 2, hoogte, p);
	}
	
	public void tik() {
		minutenTeller.tik();
		if (minutenTeller.getWaarde() == 0) {
			urenTeller.tik();
		}
	}
	
	public void setTijd(int uren, int minuten) {
		urenTeller.setWaarde(uren);
		minutenTeller.setWaarde(minuten);
	}
	
	public void tekenKlok() {
		minutenTeller.tekenTeller();
		urenTeller.tekenTeller();
	}
	
	//region - Getters & setters
	public float getX() {
		return urenTeller.getX();
	}
	
	public void setX(float x) {
		urenTeller.setX(x);
		minutenTeller.setX(x + getBreedte() / 2);
	}
	
	public float getY() {
		return urenTeller.getY();
	}
	
	public void setY(float y) {
		urenTeller.setY(y);
		minutenTeller.setY(y);
	}
	
	public float getBreedte() {
		return urenTeller.getBreedte() * 2;
	}
	
	public void setBreedte(float breedte) {
		urenTeller.setBreedte(breedte / 2);
		minutenTeller.setBreedte(breedte / 2);
	}
	
	public float getHoogte() {
		return urenTeller.getHoogte();
	}
	
	public void setHoogte(float hoogte) {
		urenTeller.setBreedte(hoogte);
		minutenTeller.setBreedte(hoogte);
	}
	//endregion - Getters & setters
}
