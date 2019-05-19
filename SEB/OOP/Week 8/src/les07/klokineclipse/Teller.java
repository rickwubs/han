package les07.klokineclipse;

import processing.core.PApplet;

public class Teller {
	private int maximum, waarde;
	private float x, y, breedte, hoogte;
	private PApplet window;
	
	public Teller(int maximum, float x, float y, float breedte, float hoogte, PApplet p) {
		this.maximum = maximum;
		this.x = x;
		this.y = y;
		this.breedte = breedte;
		this.hoogte = hoogte;
		window = p;
	}
	
	public void tik() {
		waarde = (waarde + 1) % maximum;
	}
	
	public void tekenTeller() {
		window.rectMode(window.CENTER);
		window.noStroke();
		window.fill(0);
		window.rect(x, y, breedte, hoogte);
		
		window.fill(255, 0, 0);
		window.textSize(hoogte);
		window.textAlign(window.CENTER);
		float verschuiving = (window.textAscent() - window.textDescent()) / 2;
		window.text(getTijdNotatie(), x, y + verschuiving);
	}
	
	
	//region - Getters & setters
	public float getX() {
		return x;
	}

	public void setX(float x) {
		this.x = x;
	}

	public float getY() {
		return y;
	}

	public void setY(float y) {
		this.y = y;
	}

	public float getBreedte() {
		return breedte;
	}

	public void setBreedte(float breedte) {
		this.breedte = breedte;
	}

	public float getHoogte() {
		return hoogte;
	}

	public void setHoogte(float hoogte) {
		this.hoogte = hoogte;
	}
	
	public String getTijdNotatie() {
		if (waarde < 10) {
			return "0" + waarde;
		}
		else {
			return "" + waarde;
		}
	}

	public int getWaarde() {
		return waarde;
	}

	public void setWaarde(int waarde) {
		if (waarde >= 0 && waarde < maximum) {
			this.waarde = waarde;
		}
	}
}
