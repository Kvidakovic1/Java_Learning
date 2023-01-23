package provjera;

import edunova.Osoba;
import edunova.Polaznik;
import edunova.Predavac;
import edunova.model.Entitet;

public class NaciniPristupa {

	public static void main(String[] args) {
		
		Polaznik p = new Polaznik("Pero","Perić","22");
		//p.setIme("Pero");
		System.out.println(p.pozdravi());
		nasljedivanje(p);
		
		Predavac pr = new Predavac();
		pr.setIme("Marija");
		nasljedivanje(pr);
		
	}
	
	private static void nasljedivanje(Osoba o) {
		System.out.println(o.pozdravi());
	}
}
