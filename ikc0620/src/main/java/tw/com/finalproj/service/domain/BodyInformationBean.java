package tw.com.finalproj.service.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bodyinformation")
public class BodyInformationBean {
	@Id
	@Column(name = "bodyid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer bodyid;

	@Column(name = "useraccount")
	private String useraccount;

	@Column(name = "memberheight")
	private Float memberheight;

	@Column(name = "memberweight")
	private Float memberweight;

	@Override
	public String toString() {
		return "BodyInformationBean [" + bodyid + ", " + useraccount + ", " + memberheight + ", " + memberweight + "]";
	}

	public Integer getBodyid() {
		return bodyid;
	}

	public void setBodyid(Integer bodyid) {
		this.bodyid = bodyid;
	}

	public String getUseraccount() {
		return useraccount;
	}

	public void setUseraccount(String useraccount) {
		this.useraccount = useraccount;
	}

	public Float getMemberheight() {
		return memberheight;
	}

	public void setMemberheight(Float memberheight) {
		this.memberheight = memberheight;
	}

	public Float getMemberweight() {
		return memberweight;
	}

	public void setMemberweight(Float memberweight) {
		this.memberweight = memberweight;
	}
}