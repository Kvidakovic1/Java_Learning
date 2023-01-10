package edunova;

import javax.swing.JOptionPane;

public class Z02 {

	public static void main(String[] args) {
		
		int broj;
		int umnozak = 1;
		int brojac = 1;
		
		while(brojac<6) {
			broj = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj " + brojac));
			umnozak*=broj;
			brojac++;
		}
		System.out.println("Umnozak brojeva je: " + umnozak);

	}

}
