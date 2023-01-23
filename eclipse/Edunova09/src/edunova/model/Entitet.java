package edunova.model;

// apstraktna klasa je ona klasa koja ne može imati instancu 
// služi da bi ju druge klase nasljedile
abstract public class Entitet {
	
	private int sifra;
	
	public Entitet() {
		super();
	}

	public Entitet(int sifra) {
		super();
		this.sifra = sifra;
	}

	public int getSifra() {
		return sifra;
	}

	public void setSifra(int sifra) {
		this.sifra = sifra;
	}
	
	

}
