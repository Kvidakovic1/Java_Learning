package edunova;

import javax.swing.JOptionPane;

public class Z04 {
	
	public static void main(String[] args) {
		
		// Za uneseni dvoznamenkasti broj
		// ispišite jediničnu vrijednost
		// unos 21, ispis 1
		// unos 87, ispis 7
		
		
		int a = Integer.parseInt(JOptionPane.showInputDialog("Unesite broj 1"));
		
		int r = a % 10;
		
		System.out.println(r);
		
		
		
	}
	
	
}
