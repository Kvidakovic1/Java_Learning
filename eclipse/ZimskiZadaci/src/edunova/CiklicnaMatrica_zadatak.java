package edunova;

import javax.swing.JOptionPane;

public class CiklicnaMatrica_zadatak {

	public static void main(String[] args) {

		int m = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj redova"));
		int n = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj stupaca"));

		int matrica[][] = new int[m][n];
		int broj = 1;

		int pocRed = m - 1;
		int krajRed = 0;
		int pocStupac = n - 1;
		int krajStupac = 0;

		while (broj <= m * n) {

			for (int j = pocStupac; j >= krajStupac; j--) {
				if (broj > m * n) {
					break;
				} else {
					matrica[pocRed][j] = broj++;
				}

			}
			pocRed--;

			for (int j = pocRed; j >= krajRed; j--) {

				if (broj > m * n) {
					break;
				} else {
					matrica[j][krajStupac] = broj++;
				}
			}
			krajStupac++;

			for (int j = krajStupac; j <= pocStupac; j++) {

				if (broj > m * n) {
					break;
				} else {
					matrica[krajRed][j] = broj++;
				}
			}
			krajRed++;

			for (int j = krajRed; j <= pocRed; j++) {

				if (broj > m * n) {
					break;
				} else {
					matrica[j][pocStupac] = broj++;
				}
			}
			pocStupac--;
		}

		for (int i = 0; i < m; i++) {
			for (int j = 0; j < n; j++) {
				System.out.print(matrica[i][j] + "  ");
			}
			System.out.println();
		}
	}

}
