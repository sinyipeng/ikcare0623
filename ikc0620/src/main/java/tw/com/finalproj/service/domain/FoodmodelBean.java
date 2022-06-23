package tw.com.finalproj.service.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "foodmodel")
public class FoodmodelBean {
	@Id
	@Column(name = "foodid")
	private Integer foodid;

	@Column(name = "foodname")
	private String foodname;

	@Column(name = "calorie")
	private Short calorie;

	@Column(name = "fatpercentage")
	private Byte fatpercentage;

	@Column(name = "gramsperserving")
	private Short gramsperserving;

	@Override
	public String toString() {
		return "FoodmodelBean [" + foodid + ", " + foodname + ", " + calorie + ", " + fatpercentage + ", "
				+ gramsperserving + "]";
	}

	public Integer getFoodid() {
		return foodid;
	}

	public void setFoodid(Integer foodid) {
		this.foodid = foodid;
	}

	public String getFoodname() {
		return foodname;
	}

	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}

	public Short getCalorie() {
		return calorie;
	}

	public void setCalorie(Short calorie) {
		this.calorie = calorie;
	}

	public Byte getFatpercentage() {
		return fatpercentage;
	}

	public void setFatpercentage(Byte fatpercentage) {
		this.fatpercentage = fatpercentage;
	}

	public Short getGramsperServing() {
		return gramsperserving;
	}

	public void setGramsperServing(Short gramsperserving) {
		this.gramsperserving = gramsperserving;
	}
}