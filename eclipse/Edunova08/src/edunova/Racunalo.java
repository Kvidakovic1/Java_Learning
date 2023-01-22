package edunova;

public class Racunalo {
	private String model;
	private double cijena;
	private boolean ispravno;
	private int kolicinaMemorije;
	private long brojDatoteka;
	public String getNaziv() {
		return model;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public double getCijena() {
		return cijena;
	}
	public void setCijena(double cijena) {
		this.cijena = cijena;
	}
	public boolean isIspravno() {
		return ispravno;
	}
	public void setIspravno(boolean ispravno) {
		this.ispravno = ispravno;
	}
	public int getKolicinaMemorije() {
		return kolicinaMemorije;
	}
	public void setKolicinaMemorije(int kolicinaMemorije) {
		this.kolicinaMemorije = kolicinaMemorije;
	}
	public long getBrojDatoteka() {
		return brojDatoteka;
	}
	public void setBrojDatoteka(long brojDatoteka) {
		this.brojDatoteka = brojDatoteka;
	}
	
}	
