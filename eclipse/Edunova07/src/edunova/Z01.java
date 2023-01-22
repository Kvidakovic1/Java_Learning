package edunova;

public class Z01 {
	public static void main(String[] args) {
		// Program unosi imena dvije osobe
		// i ispisujue koliko se vole
		// metodom slučajnog broja od 10 do 90

		String ime1 = Pomocno.obavezanUnosStringa("Unesite prvo ime ");
		String ime2 = Pomocno.obavezanUnosStringa("Unesite dtugo ime ");

		int slucajniBroj = Pomocno.slucajniBrojUrasponu(10, 90);
		
		System.out.println(ime1 + " i " + ime2 + " vole se " + slucajniBroj + "%");
	}

}
