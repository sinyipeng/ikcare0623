package tw.com.finalproj.service.domain;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "membersport")
public class MemberSportBean {
	@Id
	@Column(name = "sportid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer sportid;
	
	@Column(name = "useraccount")
	private String useraccount;
	
	@Column(name = "sportdate")
	private java.util.Date sportdate;
	
	@Column(name = "sportclass")
	private Integer sportclass;
	
	@Column(name ="sporthour")
	private Float sporthour;

	@Override
	public String toString() {
		return "MemberSportBean [" + sportid + ", " + useraccount + ", " + sportdate + ", " + sportclass + ", "
				+ sporthour + "]";
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

	public Integer getSportclass() {
		return sportclass;
	}

	public void setSportclass(Integer sportclass) {
		this.sportclass = sportclass;
	}

	public Float getSporthour() {
		return sporthour;
	}

	public void setSporthour(Float sporthour) {
		this.sporthour = sporthour;
	}

}
