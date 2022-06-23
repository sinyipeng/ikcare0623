package tw.com.finalproj.service.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sleeping")
public class SleepingBean {
	@Id
	@Column(name = "sleepingid ")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer sleepingid ;
	
	@Column(name = "useraccount ")
	private String useraccount ;
	
	@Column(name = "sleepingdate ")
	private java.util.Date sleepingdate ;
	
	@Column(name = "sleetimeid ")
	private Integer sleetimeid ;
	
	@Column(name = "sleepinghour ")
	private Float sleepinghour ;

	@Override
	public String toString() {
		return "SleepingBean [" + sleepingid + ", " + useraccount + ", " + sleepingdate + ", " + sleetimeid + ", "
				+ sleepinghour + "]";
	}

	public Integer getSleepingid() {
		return sleepingid;
	}

	public void setSleepingid(Integer sleepingid) {
		this.sleepingid = sleepingid;
	}

	public String getUseraccount() {
		return useraccount;
	}

	public void setUseraccount(String useraccount) {
		this.useraccount = useraccount;
	}

	public java.util.Date getSleepingdate() {
		return sleepingdate;
	}

	public void setSleepingdate(java.util.Date sleepingdate) {
		this.sleepingdate = sleepingdate;
	}

	public Integer getSleetimeid() {
		return sleetimeid;
	}

	public void setSleetimeid(Integer sleetimeid) {
		this.sleetimeid = sleetimeid;
	}

	public Float getSleepinghour() {
		return sleepinghour;
	}

	public void setSleepinghour(Float sleepinghour) {
		this.sleepinghour = sleepinghour;
	}
}
