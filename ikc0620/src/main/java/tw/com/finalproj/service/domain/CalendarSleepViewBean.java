package tw.com.finalproj.service.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "calendarsleep")
public class CalendarSleepViewBean {
	
	@Id
	@Column(name = "sleepingid ")
	private Integer sleepingid ;
	
	@Column(name = "useraccount ")
	private String useraccount ;
	
	@Column(name = "sleepingdate ")
	private java.util.Date sleepingdate ;
	
	@Column(name = "sleepinghour ")
	private Double sleepinghour ;

	@Override
	public String toString() {
		return "CalendarSleepViewBean [" + sleepingid + ", " + useraccount + ", " + sleepingdate + ", " + sleepinghour
				+ "]";
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

	public Double getSleepinghour() {
		return sleepinghour;
	}

	public void setSleepinghour(Double sleepinghour) {
		this.sleepinghour = sleepinghour;
	}

	
	
	
	
	

}
