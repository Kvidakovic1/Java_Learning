package advent;

import java.util.Scanner;

public class Day2_2022_Part2 {
	public static void main(String[] args) {
		Scanner stdin = new Scanner(System.in);

		int zbroj = 0;

		while (true) {

			String linija = stdin.next();
			
			if(linija.equals("kraj")) {
				break;
			}
			if (linija.equals("AX")) {
				zbroj += 3;
			}
			if (linija.equals("AY")) {
				zbroj += 4;
			}
			if (linija.equals("AZ")) {
				zbroj += 8; 
			}
			if (linija.equals("BX")) {
				zbroj += 1;
			}
			if (linija.equals("BY")) {
				zbroj += 5;
			}
			if (linija.equals("BZ")) {
				zbroj += 9;
			}
			if (linija.equals("CX")) {
				zbroj += 2;
			}
			if (linija.equals("CY")) {
				zbroj += 6;
			}
			if (linija.equals("CZ")) {
				zbroj += 7;
			}
			
		}
		stdin.close();
		System.out.println(zbroj);

	}
	
	
}
