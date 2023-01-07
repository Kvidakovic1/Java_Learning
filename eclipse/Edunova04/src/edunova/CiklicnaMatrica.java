package edunova;

public class CiklicnaMatrica {

	public static void main(String[] args) {
		// Kreirati program koji ispisuje cikličnu matricu
		// Pocevsi od dolje desno 

		int broj = 1;

		int k = 0;
		int m = 3;
		int l = 0;
		int n = 3;
		int matrica[][] = new int[m][n];

		while (k < m && l < n) {
			for (int i = l; i < n; ++i) {
				matrica[k][i] = broj++;

			}
			k++;

			for (int i = k; i < m; ++i) {
				matrica[i][n - 1] = broj++;

			}
			n--;

			if (k < m) {
				for (int i = n - 1; i >= 1; --i) {
					matrica[m - 1][i] = broj++;

				}
				m--;

			}
			if (l < n) {
				for (int i = m - 1; i >= k; --i) {
					matrica[i][l] = broj++;

				}
				l++;

			}
		}

		m = 3;
		n = 3;

		for (int i = 0; i < m; i++) {
			for (int j = 0; j < n; j++) {
				System.out.print(matrica[i][j] + " ");
			}
			System.out.println();
		}

	}

}
