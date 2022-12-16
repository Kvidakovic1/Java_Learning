package edunova;

import javax.swing.JOptionPane;

public class Z03 {

	public static void main(String[] args) {
		
		
		// Za unesena dva cijela broja
		// ispišite rezutat djeljenja
		
		int a = Integer.parseInt(JOptionPane.showInputDialog("Unesite broj 1"));
		int b = Integer.parseInt(JOptionPane.showInputDialog("Unesite broj 2"));
		
		
		float rezultat = (float) a  /b;
		
		
		System.out.println(rezultat);
		
		
	}
	
}
