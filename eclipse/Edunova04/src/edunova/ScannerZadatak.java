package edunova;

import java.util.Scanner;

public class ScannerZadatak {

	public static void main(String[] args) {

		// Two numbers are entered through the keyboard. Write a program to find the
		// value of one number raised to the power of another. 

		int base;
		int power;
		int rezultat = 1;

		Scanner ulaz = new Scanner(System.in);

		System.out.print("Unesi bazu ");
		base = ulaz.nextInt();

		System.out.print("Unesi potenciju ");
		power = ulaz.nextInt();

		for (int i = 1; i <= power; i++) {
			rezultat *= base;
		}

		System.out.println("Result: " + rezultat);
	}

}