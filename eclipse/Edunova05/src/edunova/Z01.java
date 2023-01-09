package edunova;

public class Z01 {
	public static void main(String[] args) {
		// while petljom ispisati
		// zbroj prvih 100 brojeva

		int broj = 0;
		int zbroj = 0;

		while (broj <= 100) {
			zbroj += broj++;
		}
		System.out.println(zbroj);
	}
}
