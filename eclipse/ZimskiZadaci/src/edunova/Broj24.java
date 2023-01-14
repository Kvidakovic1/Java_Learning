package edunova;

import java.util.Arrays;

import javax.swing.JOptionPane;

public class Broj24 {

	public static void main(String[] args) {
		// Kreirati program koji unosi 24 broja, ispisuje njihov zbroj, najmanji i
		// najveći uneseni broj.

		int niz[] = new int[24];

		int zbroj = 0;
		int najmanji = 0;
		;
		int najveci = 0;

		for (int i = 0; i < niz.length; i++) {
			niz[i] = Integer.parseInt(JOptionPane.showInputDialog("Unesi " + (i + 1) + ". broj"));
			zbroj += niz[i];
		}

//		System.out.println(Arrays.toString(niz));

		najmanji = niz[0];
		for (int i = 0; i < niz.length; i++) {

			if (niz[i] < najmanji) {
				najmanji = niz[i];
			} else if (niz[i] > najveci) {
				najveci = niz[i];
			}
		}
		System.out.println("Zbroj svih brojeva je " + zbroj);
		System.out.println("Najveci broj je " + najveci);
		System.out.println("Najmanji broj je " + najmanji);
	}

}
