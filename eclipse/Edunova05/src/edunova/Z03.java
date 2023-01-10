package edunova;

import javax.swing.JOptionPane;

public class Z03 {

	public static void main(String[] args) {
		// Korisnik unosi 5 brojeva
		// program ispisuje najveći

		int brojac = 1;
		int najveci = Integer.MIN_VALUE;
		int broj;

		while (brojac < 6) {
			broj = Integer.parseInt(JOptionPane.showInputDialog("Unesi " + brojac + ". broj"));
			if (broj > najveci) {
				najveci = broj;
			}
			brojac++;
		}
		System.out.println("Najveci broj je " + najveci);

	}

}
