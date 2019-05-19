package les07.chuckaluck;
public class Dobbelbeker {

	private Dobbelsteen dobbelstenen[] = new Dobbelsteen[3];
	int totaalNKeerGeworpen = 0;
	
	public Dobbelbeker() {
		for (int i = 0; i < dobbelstenen.length; i++) {
			dobbelstenen[i] = new Dobbelsteen(6);
		}
	}

	public int nKeerGetalGeworpen(int getal) {
		for (int i = 0; i < dobbelstenen.length; i++) {
			if (dobbelstenen[i].isGetalGegooid(getal)) {
				totaalNKeerGeworpen++;
			}
		}
		return totaalNKeerGeworpen;
	}

	public String toString() {
		return "" + dobbelstenen[0] + "," + dobbelstenen[1] + "," + dobbelstenen[2];
	}
}
