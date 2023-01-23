package edunova;

// extends Object se ne mora pisati
// sve klase (htjele one to ili ne u javi nasljeđuju java.lang.Object)
// ČITATI: https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html
public class Osoba extends Object {
	// u javi jedna klasa može nasljediti jednu nadklasu
	
	private String ime;
	// prazan konstruktor
	public Osoba() {
		System.out.println("Konstruktor Osoba");
	}
	
	// puni konstruktor
	public Osoba(String ime, String prezime) {
		super();
		this.ime = ime;
		this.prezime = prezime;
	}



	/*
	 * Načini pristupa metodama i klasama:
	 * private (vidi se u trenutnoj klasi)
	 * protected (vidi se u trenutnoj i svim podklasama)
	 * package scope (bez posebnog navođenja načina pristupa) - u cijelom paketu
	 * public (vidi se u svim klasama u bilo kojem paketu)
	 */
	private String prezime;
	protected int status;
	int broj;
	protected String brojUgovora;
	public String getIme() {
		return ime;
	}
	public void setIme(String ime) {
		this.ime = ime;
	}
	public String getPrezime() {
		return prezime;
	}
	public void setPrezime(String prezime) {
		this.prezime = prezime;
	}
	
	
	public String pozdravi() {
		return ime + " " + prezime;
	}
	
	

}
