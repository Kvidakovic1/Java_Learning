package edunova;

public class TestMetode {

	public static int []
			ljubav(int[] niz) {

		int[] noviNiz = new int[10];

		if (niz.length % 2 == 0) {
			noviNiz = new int[niz.length / 2];
		} else {
			noviNiz = new int[(niz.length / 2) + 1];
		}

		int duzina = noviNiz.length;

		for (int i = 0; i < duzina; i++) {
			if (i == duzina - 1) {
				noviNiz[i] = niz[i];
			} else {
				noviNiz[i] = niz[i] + niz[niz.length - 1 - i];
			}
			
		}
		return noviNiz;

	}

	public static int zbroj(int broj) {
		
		// uvjet prekida rekurzije
		if (broj == 1) {
			return 1;
		}

		return broj + zbroj(broj - 1) /* poziv rekurzije */;
	}

}
