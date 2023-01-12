package edunova;

public class Z05 {
	// Metoda prima dva decimalna broja
	// metoda vraća zbroj samo
	// decimalnih vrijednosti
	
	public static String decimalno(double a,double b) {
		double znamenka1,znamenka2;
		znamenka1 = a%1;
		znamenka2 = b%1;
		
		
		
		return (String.format("%.2f", (znamenka1 + znamenka2)));
	
	
	}
}
