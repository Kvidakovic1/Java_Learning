package edunova;

import java.util.Arrays;

import javax.swing.JOptionPane;

public class ZbrojMatrica {

	public static void main(String[] args) {
		// Keirati program koji unosi dvije matrice 4x4 te ispisuje njihov zbroj 

		int matrica1[][] = new int[4][4];
		int matrica2[][] = new int[4][4];
		int matrica3[][] = new int[4][4];

		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 4; j++) {
				matrica1[i][j] = Integer.parseInt(JOptionPane.showInputDialog("Unesite brojeve u matricu 1"));
				System.out.print(matrica1[i][j] + " ");

			}

		}
		System.out.println();
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 4; j++) {
				matrica2[i][j] = Integer.parseInt(JOptionPane.showInputDialog("Unesite brojeve u matricu 4 "));
				System.out.print(matrica2[i][j] + " ");
			}

		}
		System.out.println();

		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 4; j++) {
				matrica3[i][j] = matrica1[i][j] + matrica2[i][j];
				System.out.print(matrica3[i][j] + " ");
			}
		}

	}
}

