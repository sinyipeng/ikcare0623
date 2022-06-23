package tw.com.finalproj.service.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "calendarsport")
public class CalendarSportViewBean {
	
	@Id
	@Column(name = "sportid ")
	private Integer sportid ;
	
	@Column(name = "useraccount ")
	private String useraccount ;
	
	@Column(name = "sportdate ")
	private java.util.Date sportdate ;
	
	@Column(name = "calorie ")
	private Double calorie ;

	@Override
	public String toString() {
		return "CalendarSportViewBean [" + sportid + ", " + useraccount + ", " + sportdate + ", " + calorie + "]";
	}

	public Integer getSportid() {
		return sportid;
	}

	public void setSportid(Integer sportid) {
		this.sportid = sportid;
	}

	public String getUseraccount() {
		return useraccount;
	}

	public void setUseraccount(String useraccount) {
		this.useraccount = useraccount;
	}

	public java.util.Date getSportdate() {
		return sportdate;
	}

	public void setSportdate(java.util.Date sportdate) {
		this.sportdate = sportdate;
	}

	public Double getCalorie() {
		return calorie;
	}

	public void setCalorie(Double calorie) {
		this.calorie = calorie;
	}
	
	
	
	
	

}
