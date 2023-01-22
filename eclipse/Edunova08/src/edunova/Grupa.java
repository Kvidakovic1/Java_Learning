package edunova;
 
import java.util.Date;

public class Grupa {
	private int sfira;
	private String naziv;
	private int maksimalnoPolaznika;
	private Date datumPocetka;
	private Smjer smjer;
	public int getSfira() {
		return sfira;
	}
	public void setSfira(int sfira) {
		this.sfira = sfira;
	}
	public String getNaziv() {
		return naziv;
	}
	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}
	public int getMaksimalnoPolaznika() {
		return maksimalnoPolaznika;
	}
	public void setMaksimalnoPolaznika(int maksimalnoPolaznika) {
		this.maksimalnoPolaznika = maksimalnoPolaznika;
	}
	public Date getDatumPocetka() {
		return datumPocetka;
	}
	public void setDatumPocetka(Date datumPocetka) {
		this.datumPocetka = datumPocetka;
	}
	public Smjer getSmjer() {
		return smjer;
	}
	public void setSmjer(Smjer smjer) {
		this.smjer = smjer;
	}
	
	
}
