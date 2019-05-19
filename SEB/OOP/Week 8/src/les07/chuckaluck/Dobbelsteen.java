package les07.chuckaluck;
import java.util.Random;

public class Dobbelsteen {
    
    private Random r;
    private int aantalZijden;
    private int aantalOgen;
    
    public Dobbelsteen(int aantalZijden) {
        // aantalZijden moet minimaal 2 zijn
        
    	r = new Random();
    	
        if(aantalZijden >= 2) {
            this.aantalZijden = aantalZijden;
            
        }
        else {
            System.out.println("Aantal zijden mag niet minder zijn dan 2");
        }
        
    }
    
    private void dobbel() {
        this.aantalOgen = r.nextInt(aantalZijden - 1) + 1;
    }
    
    public boolean isGetalGegooid(int getal) {
    	dobbel();
        if(aantalOgen == getal) {
            return true;
        }
        return false;
    }
    
    public String toString() {
        return "" + aantalOgen;
    }
}
