package edunova;

public class Z02 {

	public static void main(String[] args) {
		// Program od korisnika traži ukupan broj
		// predmeta u školi
		// Program unosi ocjene za svaki predmet
		// i ispisuje prosjek ocjena
		
		int suma = 0;
		
		int ukupnoPredmeta = Pomocno.ucitajCijeliPozitivniBroj("Unesite za koliko predmeta zelite prosijek ");
		
		for(int i =0; i<ukupnoPredmeta;i++) {
			suma+=Pomocno.ucitajCijeliBrojURasponu("Unesite " + (i + 1) +". ocjenu",1,5);
		}
		
		System.out.println(suma/(float)ukupnoPredmeta);

	}

}
