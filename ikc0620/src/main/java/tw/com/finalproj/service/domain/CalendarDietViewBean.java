package tw.com.finalproj.service.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "calendardiet")
public class CalendarDietViewBean {
	
	@Id
	@Column(name = "dietid ")
	private Integer dietid ;
	
	@Column(name = "useraccount ")
	private String useraccount ;
	
	@Column(name = "dietdate ")
	private java.util.Date dietdate ;
	
	@Column(name = "dietcalories ")
	private Double dietcalories ;

	@Override
	public String toString() {
		return "CalendarDietViewBean [" + dietid + ", " + useraccount + ", " + dietdate + ", " + dietcalories + "]";
	}

	public Integer getDietid() {
		return dietid;
	}

	public void setDietid(Integer dietid) {
		this.dietid = dietid;
	}

	public String getUseraccount() {
		return useraccount;
	}

	public void setUseraccount(String useraccount) {
		this.useraccount = useraccount;
	}

	public java.util.Date getDietdate() {
		return dietdate;
	}

	public void setDietdate(java.util.Date dietdate) {
		this.dietdate = dietdate;
	}

	public Double getDietcalories() {
		return dietcalories;
	}

	public void setDietcalories(Double dietcalories) {
		this.dietcalories = dietcalories;
	}


}
