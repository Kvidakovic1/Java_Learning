package edunova;

import javax.swing.JOptionPane;

public class Z06 {

	public static void main(String[] args) {
		// program unosi broj između
		// 1 i 999
		// U slučaju da je izvan tog raspona
		// ispisati grešku i prekinuti program
		// Program ispisuje 1. znamenku upisanog broja

		int a = Integer.parseInt(JOptionPane.showInputDialog("Unesite broj izmedu 1 i 999"));

		if (a < 1 || a > 999) {
			System.out.println("Greška");

		} else if (a >= 100) {
			int b = a / 100;

			System.out.println(b);

		} else if (a < 100 && a > 9) {
			int b = a / 10;
			System.out.println(b);
		} else {
			int b = a % 10;
			System.out.println(b);
		}

	}

}
