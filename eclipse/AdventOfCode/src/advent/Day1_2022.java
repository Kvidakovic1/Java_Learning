package advent;

import java.util.Scanner;

public class Day1_2022 {
	public static void main(String[] args) {

		Scanner stdin = new Scanner(System.in);
		int maxKalorija = 0;
		int trenutniMax = 0;
		while (true) {
			String broj = stdin.nextLine();
			if (broj.equals("kraj"))
				break;
			if (broj.equals("")) {

				if (trenutniMax > maxKalorija) {
					maxKalorija = trenutniMax;

				}
				trenutniMax = 0;
				continue;
			}
			trenutniMax += Integer.valueOf(broj);
		}

		System.out.println(maxKalorija);
		stdin.close();

	}
}
