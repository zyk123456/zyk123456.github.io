@Table("EWS.EWS_PARTER_GUARD")
public class SysPartguard{	
	@Name
	@Column("NBJGH")
	private String nbjgh;
	
	@Column("JGMC")
	private String jgmc;
	
	@Column("SFZJHM")
	private String sfzjhm;
	
	@Column("XBHM")
	private String xbhm;

	public String getNbjgh() {
		return nbjgh;
	}

	public void setNbjgh(String nbjgh) {
		this.nbjgh = nbjgh;
	}

	public String getJgmc() {
		return jgmc;
	}

	public void setJgmc(String jgmc) {
		this.jgmc = jgmc;
	}

	public String getSfzjhm() {
		return sfzjhm;
	}

	public void setSfzjhm(String sfzjhm) {
		this.sfzjhm = sfzjhm;
	}

	public String getXbhm() {
		return xbhm;
	}

	public void setXbhm(String xbhm) {
		this.xbhm = xbhm;
	}
	
}
