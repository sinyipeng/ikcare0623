package tw.com.finalproj.service.domain;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "dietdetails")
public class DietDetailsBean {
	@Id
	@Column(name = "dietdetailid ")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer dietdetailid ;
	
	@Column(name = "dietid ")
	private Integer dietid ;
	
	@Column(name = "sampleid ")
	private Integer sampleid ;
	
	@Column(name = "foodid ")
	private Integer foodid ;
	
	@Column(name = "foodnumber ")
	private Integer foodnumber ;

	@Override
	public String toString() {
		return "DietDetailsBean [" + dietdetailid + ", " + dietid + ", " + sampleid + ", " + foodid + ", " + foodnumber
				+ "]";
	}

	public Integer getDietdetailid() {
		return dietdetailid;
	}

	public void setDietdetailid(Integer dietdetailid) {
		this.dietdetailid = dietdetailid;
	}

	public Integer getDietid() {
		return dietid;
	}

	public void setDietid(Integer dietid) {
		this.dietid = dietid;
	}

	public Integer getSampleid() {
		return sampleid;
	}

	public void setSampleid(Integer sampleid) {
		this.sampleid = sampleid;
	}

	public Integer getFoodid() {
		return foodid;
	}

	public void setFoodid(Integer foodid) {
		this.foodid = foodid;
	}

	public Integer getFoodnumber() {
		return foodnumber;
	}

	public void setFoodnumber(Integer foodnumber) {
		this.foodnumber = foodnumber;
	}

}
