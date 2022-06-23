package tw.com.finalproj.service.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "members")
public class MembersBean {
	@Id
	@Column(name = "useraccount")
	private String useraccount;
	
	@Column(name = "userpassword")
	private String userpassword;

	@Column(name = "membername")
	private String membername;

	@Column(name = "birthday")
	@Temporal(TemporalType.DATE)
	private java.util.Date birthday;

	@Column(name = "address")
	private String address;

	@Column(name = "telephone")
	private String telephone;

	@Column(name = "cellphone")
	private String cellphone;

	@Column(name = "email")
	private String email;

	@Column(name = "userlevel")
	private String userlevel;

	@Column(name = "area")
	private String area;

	@Column(name = "gender")
	private String gender;


	@Override
	public String toString() {
		return "MembersBean [" + useraccount + ", " + userpassword + ", " + membername + ", " + birthday + ", "
				+ address + ", " + telephone + ", " + cellphone + ", " + email + ", " + userlevel + ", " + area + ", "
				+ gender + "]";
	}

	public String getUseraccount() {
		return useraccount;
	}


	public void setUseraccount(String useraccount) {
		this.useraccount = useraccount;
	}


	public String getUserpassword() {
		return userpassword;
	}


	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}


	public String getMembername() {
		return membername;
	}


	public void setMembername(String membername) {
		this.membername = membername;
	}


	public java.util.Date getBirthday() {
		return birthday;
	}


	public void setBirthday(java.util.Date birthday) {
		this.birthday = birthday;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getTelephone() {
		return telephone;
	}


	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}


	public String getCellphone() {
		return cellphone;
	}


	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getUserlevel() {
		return userlevel;
	}


	public void setUserlevel(String userlevel) {
		this.userlevel = userlevel;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}
}
