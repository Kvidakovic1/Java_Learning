package edunova;

import java.util.Arrays;

public class LjubavniKalkulator {

	public static void main(String[] args) {
		String ime1 = "Marta";
		String ime2 = "Manuel";
		String zajedno = ime1 + ime2;
		int brojac = 0;
		int [] brojevi = new int[zajedno.length()];
		
		for(int i = 0; i<zajedno.length();i++) {
			brojac = 0;
			for(int j=0;j<zajedno.length();j++) {
				if(zajedno.charAt(i) == zajedno.charAt(j)) {
					brojac++;
				}
			}
			brojevi[i] = brojac;
			
			}
		for(int i = 0; i<zajedno.length();i++) {
			System.out.print(" " + zajedno.charAt(i)+ " ");
		}
		System.out.println();
		System.out.println(Arrays.toString(brojevi));
		
		
	}
	
	// Trenutna metoda public static int[] ljubav(int[] niz) {
//	int[] noviNiz = new int[10];
//	if (niz.length % 2 == 0) {
//		noviNiz = new int[niz.length / 2];
//	} else {
//		noviNiz = new int[(niz.length / 2) + 1];
//	}
//
//	int duzina = noviNiz.length;
//
//	for (int i = 0; i < duzina; i++) {
//		if(i == duzina -1) {
//			noviNiz[i] = niz[i];
//		}else {
//			noviNiz[i] = niz[i] + niz[niz.length - 1 - i];
//		}
//		
//		
//		
//
//	}
//
//	return noviNiz;
//
//}

}
