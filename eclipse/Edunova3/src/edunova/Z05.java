package edunova;

import javax.swing.JOptionPane;

public class Z05 {
	public static void main(String[] args) {
		
		// Za upisana 3 cijela broja
		// program ispisuje najveći

		int a = Integer.parseInt(JOptionPane.showInputDialog("Unesite broj 1"));
		int b = Integer.parseInt(JOptionPane.showInputDialog("Unesite broj 2"));
		int c = Integer.parseInt(JOptionPane.showInputDialog("Unesite broj 3"));

		if (a > b && a > c) {
			System.out.println(a);
		} else if (b > a && b > c) {
			System.out.println(b);
		} else {
			System.out.println(c);
		}

	}
}
