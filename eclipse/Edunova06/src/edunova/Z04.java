package edunova;

public class Z04 {
	// Metoda prima niz cijelih brojeva
	// Metoda vraća
	// zbroj svih parnih brojeva
	// u primljenom nizu

	public static int zbrojparnih(int[] niz) {
		int zbroj = 0;
		for (int i : niz) {
			if (i % 2 != 0) {
				continue;

			}
			zbroj +=i;

		}
		return zbroj;
	}
}
