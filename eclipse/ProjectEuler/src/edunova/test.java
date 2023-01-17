package edunova;

import java.util.Arrays;

public class test {

	public static void main(String[] args) {
		String ime1 = "Marta";
		String ime2 = "Manuel";
		String zajedno = ime1.toLowerCase() + ime2.toLowerCase();
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
		
		System.out.println(TestMetode.ljubav(brojevi));
		
		
		
		
		
	}
	
	
	
	
	
	
		
	

} 
