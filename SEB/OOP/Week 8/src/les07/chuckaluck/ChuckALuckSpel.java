package les07.chuckaluck;

// Deze uitwerking is gemaakt door klas I1M (2016-2017 p1)

public class ChuckALuckSpel {
	private Dobbelbeker beker;
	private int aantalNGelijk;
	private int saldo;
	private int ronde = 0;
	private int geluksgetal;

	public ChuckALuckSpel(int beginsaldo) {
		this.saldo = beginsaldo;
		beker = new Dobbelbeker();
	}

	public void speelRonde(int geluksgetal, int inzet) {
		this.geluksgetal = geluksgetal;
		saldo = saldo - inzet;
		ronde++;
		aantalNGelijk = beker.nKeerGetalGeworpen(geluksgetal);
		if (aantalNGelijk > 0) {
			switch (aantalNGelijk) {
			case 1:
				saldo = inzet * 1 + saldo;
				break;
			case 2:
				saldo = inzet * 2 + saldo;
				break;
			case 3:
				saldo = inzet * 10 + saldo;
				break;
			}
		}
	}

	public String toString() {
		return "-------------------------\n" + "Ronde: " + ronde + "\n" + "geluksgetal: " + geluksgetal + "\n"
				+ "worp: " + beker + "\n" + "Aan dobbelstenen gelijk: " + aantalNGelijk + "\n"+ "saldo: " + saldo;
	}
}