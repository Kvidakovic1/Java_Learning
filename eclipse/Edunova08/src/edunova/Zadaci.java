package edunova;

import java.util.Date;

public class Zadaci {
	public static void main(String[] args) {
		Racunalo[] racunala = new Racunalo[2];
		
		for(int i =0;i<racunala.length;i++) {
			racunala[i] = kreirajRacunalo(Pomocno.obavezanUnosStringa("Unesi model"), Pomocno.ucitajCijeliPozitivniBroj("Unesi cijenu"), true, Pomocno.ucitajCijeliPozitivniBroj("Unesi kolicinu memorije"), Pomocno.ucitajCijeliPozitivniBroj("Uneis broj datoteka"));
		}
		
		
		
	}

	private static Racunalo kreirajRacunalo(String model, double cijena, boolean ispravno, int kolicinaMemorije,
			long brojDatoteka) {
		Racunalo racunalo = new Racunalo();
		racunalo.setModel(model);
		racunalo.setCijena(cijena);
		racunalo.setIspravno(ispravno);
		racunalo.setKolicinaMemorije(kolicinaMemorije);
		racunalo.setBrojDatoteka(brojDatoteka);

		return racunalo;
		

	}
	
	private static Kupac unesiKupca(String naziv,String adresa) {
		Kupac kupac = new Kupac();
		
		kupac.setNaziv(naziv);
		kupac.setAdresa(adresa);
		
		return kupac;
		
	}
	
	private static Racun kreirajRacun(Date datum, float iznos, Kupac kupac) {
		Racun racun = new Racun();
		
		racun.setDatum(datum);
		racun.setIznos(iznos);
		racun.setKupac(kupac);
		
		return racun;
	}
}
