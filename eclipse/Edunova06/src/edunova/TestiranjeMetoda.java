package edunova;

import javax.swing.JOptionPane;

public class TestiranjeMetoda {
	public static void main(String[] args) {
		// Kreirati program koji ispisuje cikličnu matricu
		// Pocevsi od dolje desno

		int broj = 1;
		int m = 7;
		int n =3;

		int pocRed = m-1;
		int krajRed = 0;
		int pocStupac = n-1;
		int krajStupac = 0;
		int matrica[][] = new int[m][n];

		while (krajRed < pocRed && krajStupac < pocStupac) {
			// Print the first row from the remaining rows

			for (int i = pocStupac; i > -1; --i) {
				matrica[pocRed][i] = broj++;

			}
			pocRed--;

			// Print the last column from the remaining columns

			for (int i = pocRed; i > krajRed -1 ; --i) {
				matrica[i][krajStupac] = broj++;

			}
			krajStupac++;
			

			// Print the last row from the remaining rows

			for(int i = krajStupac;i<=pocStupac; i++) {
				matrica[krajRed][i] = broj++;
			}
			krajRed++;
			
			for(int i=krajRed;i<pocRed+1;i++) {
				matrica[i][pocStupac] = broj++;
			}
			
			pocStupac--;
			
			for(int i=pocStupac; i>=krajStupac;i--) {
				matrica[pocRed][i] = broj++;
			}
			
			
			
			for(int i = pocStupac;i==krajStupac;i++) {
				matrica[i][krajRed] = broj++;
			}
			
			
			
			}
		
		

		for (int i = 0; i < m; i++) {
			for (int j = 0; j < n; j++) {
				System.out.print(matrica[i][j] + "  ");
			}
			System.out.println();
		}

	}
}
