package edunova;

import javax.swing.JOptionPane;

public class IspisPrimBrojeva {

	public static void main(String[] args) {
		// Kreirati program koji za dva unesena broja ispisuje sve prim brojeve između
		// njih
		int brojac = 0;
		int a = Integer.parseInt(JOptionPane.showInputDialog("Unesi prvi broj"));
		int b = Integer.parseInt(JOptionPane.showInputDialog("Unesi drugi broj"));

		int veci, manji, zbroj = 0;

		if (a > b) {
			veci = a;
			manji = b;
		} else {
			veci = b;
			manji = a;
		}

		for (int i = manji; i < veci; i++) {
			brojac = 0;
			for (int j = 2; j < (i); j++) {
				if ((i % j) == 0) {

					brojac++;
					break;
				}

			}
			if (brojac == 0 && i != 1) {
				System.out.println(i);
				;
			}

		}

	}

}
