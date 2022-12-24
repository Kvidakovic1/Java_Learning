package edunova;

public class Tablica_Mnozenja25x {
	public static void main(String[] args) {

		// Kreirati program koji ispisuje tablicu množenja 15x15

		for (int i = 1; i <= 25; i++) {
			for (int j = 1; j <= 25; j++) {
				if ((i * j < 10)) {
					System.out.print(i * j + "   ");
				}else if((i * j < 100)) {
					System.out.print(i * j + "  ");
				}else if((i*j >10) && (i*j <100)) {
					System.out.print(i * j + "   ");
				}else {
					System.out.print(i * j + " ");
				}

			}
			System.out.println();
		}

	}
}
