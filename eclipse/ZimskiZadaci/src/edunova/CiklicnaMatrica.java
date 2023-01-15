package edunova;

import javax.swing.JOptionPane;

public class CiklicnaMatrica {
	public static void main(String[] args) {
		// Kreirati program koji ispisuje cikličnu matricu
		// Pocevsi od dolje desno

		int broj = 1;
		int m = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj redova"));
		int n = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj stupaca"));

		int pocRed = 0;
		int krajRed = m ;
		int pocStupac = 0;
		int krajStupac = n;
		int matrica[][] = new int[m][n];

		while (pocRed < krajRed && pocStupac < krajStupac) {
			// Ispisati prvi red 

			for (int i = pocStupac; i < krajStupac; ++i) {
				matrica[pocRed][i] = broj++;

			}
			pocRed++;

			// Ispisati zadnji stupac

			for (int i = pocRed; i < krajRed; ++i) {
				matrica[i][krajStupac - 1] = broj++;

			}
			krajStupac--;

			// Ispisati zadnji red

			if (pocRed < krajRed) {
				for (int i = krajStupac - 1; i >= pocStupac; --i) {
					matrica[krajRed - 1][i] = broj++;

				}
				krajRed--;
			}
			// Ispisati prvi stupac
			if (pocStupac < krajStupac) {
				for (int i = krajRed - 1; i >= pocRed; --i) {
					matrica[i][pocStupac] = broj++;

				}
				pocStupac++;
			}
		}



		for (int i = 0; i < m; i++) {
			for (int j = 0; j < n; j++) {
				System.out.print(matrica[i][j] + " ");
			}
			System.out.println();
		}

	}
}
