package tw.com.finalproj.service.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "fooddata")
public class FoodDataBean {
	@Id
	@Column(name = "sampleid ")
	private Integer sampleid ;

	@Column(name = "foodclass")
	private String foodclass;

	@Column(name = "samplename")
	private String samplename;

	@Column(name = "calories")
	private Float calories;

	@Column(name = "fixcalories")
	private Float fixcalories;

	@Column(name = "moisture")
	private Float moisture;

	@Column(name = "crudeprotein")
	private Float crudeprotein;

	@Column(name = "crudefat")
	private Float crudefat;

	@Column(name = "saturatedfats")
	private Float saturatedfats;

	@Column(name = "carbohydrate")
	private Float carbohydrate;

	@Column(name = "dietaryfiber")
	private Float dietaryfiber;

	@Column(name = "glucose")
	private Float glucose;

	@Column(name = "fructose")
	private Float fructose;

	@Column(name = "sucrose")
	private Float sucrose;

	@Column(name = "lactose")
	private Float lactose;

	@Column(name = "sodium")
	private Float sodium;

	@Column(name = "potassium")
	private Float potassium;

	@Column(name = "calcium")
	private Float calcium;

	@Column(name = "magnesium")
	private Float magnesium;

	@Column(name = "ferrum")
	private Float ferrum;

	@Column(name = "zinc")
	private Float zinc;

	@Column(name = "phosphor")
	private Float phosphor;

	@Column(name = "copper")
	private Float copper;

	@Column(name = "manganese")
	private Float manganese;

	@Column(name = "vitamina")
	private Float vitaminA;

	@Column(name = "acarotene")
	private Float carotenea;

	@Column(name = "bcarotene")
	private Float caroteneb;

	@Column(name = "vitamindiu")
	private Float vitaminDIU;

	@Column(name = "vitamindug")
	private Float vitaminDUG;

	@Column(name = "vitamine")
	private Float vitaminE;

	@Column(name = "vitamink1")
	private Float vitaminK1;

	@Column(name = "vitaminb1")
	private Float vitaminB1;

	@Column(name = "vitaminb2")
	private Float vitaminB2;

	@Column(name = "niacin")
	private Float niacin;

	@Column(name = "vitaminb6")
	private Float vitaminB6;

	@Column(name = "vitaminb12")
	private Float vitaminB12;

	@Column(name = "folate")
	private Float folate;

	@Column(name = "vitaminc")
	private Float vitaminC;

	@Column(name = "fattyacids")
	private Float fattyacidS;

	@Column(name = "palmiticacid")
	private Float palmiticacid;

	@Column(name = "stearicacid")
	private Float stearicacid;

	@Column(name = "eicosanoicacid")
	private Float eicosanoicacid;

	@Column(name = "fattyacidm")
	private Float fattyacidM;

	@Column(name = "oleicacid")
	private Float oleicacid;

	@Column(name = "gadoleicacid")
	private Float gadoleicacid;

	@Column(name = "erucicacid")
	private Float erucicacid;

	@Column(name = "fattyacidp")
	private Float fattyacidP;

	@Column(name = "linoleicacid")
	private Float linoleicacid;

	@Column(name = "linolenicacid")
	private Float linolenicacid;

	@Column(name = "arachidonicacid")
	private Float arachidonicacid;

	@Column(name = "eicosapentaenoicacid")
	private Float eicosapentaenoicacid;

	@Column(name = "docosapentenoicacid")
	private Float docosapentenoicacid;

	@Column(name = "docosahexaenoicacid")
	private Float docosahexaenoicacid;

	@Column(name = "transfat")
	private Float transfat;

	@Column(name = "tyrosine")
	private Float tyrosine;

	@Column(name = "cholesterol")
	private Float cholesterol;

	@Column(name = "alcohol")
	private Float alcohol;
	
	

	@Override
	public String toString() {
		return "FoodDataBean [" + sampleid + ", " + foodclass + ", " + samplename
				+ ", " + calories + ", " + fixcalories + ", " + moisture
				+ ", " + crudeprotein + ", " + crudefat + ", " + saturatedfats
				+ ", " + carbohydrate + ", " + dietaryfiber + ", " + glucose
				+ ", " + fructose + ", " + sucrose + ", " + lactose + ", " + sodium
				+ ", " + potassium + ", " + calcium + ", " + magnesium + ", "
				+ ferrum + ", " + zinc + ", " + phosphor + ", " + copper + ", "
				+ manganese + ", " + vitaminA + ", " + carotenea + ", " + caroteneb
				+ ", " + vitaminDIU + ", " + vitaminDUG + ", " + vitaminE
				+ ", " + vitaminK1 + ", " + vitaminB1 + ", " + vitaminB2 + ", "
				+ niacin + ", " + vitaminB6 + ", " + vitaminB12 + ", " + folate
				+ ", " + vitaminC + ", " + fattyacidS + ", " + palmiticacid
				+ ", " + stearicacid + ", " + eicosanoicacid + ", " + fattyacidM
				+ ", " + oleicacid + ", " + gadoleicacid + ", " + erucicacid
				+ ", " + fattyacidP + ", " + linoleicacid + ", " + linolenicacid
				+ ", " + arachidonicacid + ", " + eicosapentaenoicacid
				+ ", " + docosapentenoicacid + ", " + docosahexaenoicacid
				+ ", " + transfat + ", " + tyrosine + ", " + cholesterol + ", "
				+ alcohol + "]";
	}

	public Integer getSampleid() {
		return sampleid;
	}

	public void setSampleid(Integer sampleid) {
		this.sampleid = sampleid;
	}

	public String getFoodclass() {
		return foodclass;
	}

	public void setFoodclass(String foodclass) {
		this.foodclass = foodclass;
	}

	public String getSamplename() {
		return samplename;
	}

	public void setSamplename(String samplename) {
		this.samplename = samplename;
	}

	public Float getCalories() {
		return calories;
	}

	public void setCalories(Float calories) {
		this.calories = calories;
	}

	public Float getFixcalories() {
		return fixcalories;
	}

	public void setFixcalories(Float fixcalories) {
		this.fixcalories = fixcalories;
	}

	public Float getMoisture() {
		return moisture;
	}

	public void setMoisture(Float moisture) {
		this.moisture = moisture;
	}

	public Float getCrudeprotein() {
		return crudeprotein;
	}

	public void setCrudeprotein(Float crudeprotein) {
		this.crudeprotein = crudeprotein;
	}

	public Float getCrudefat() {
		return crudefat;
	}

	public void setCrudefat(Float crudefat) {
		this.crudefat = crudefat;
	}

	public Float getSaturatedfats() {
		return saturatedfats;
	}

	public void setSaturatedfats(Float saturatedfats) {
		this.saturatedfats = saturatedfats;
	}

	public Float getCarbohydrate() {
		return carbohydrate;
	}

	public void setCarbohydrate(Float carbohydrate) {
		this.carbohydrate = carbohydrate;
	}

	public Float getDietaryfiber() {
		return dietaryfiber;
	}

	public void setDietaryfiber(Float dietaryfiber) {
		this.dietaryfiber = dietaryfiber;
	}

	public Float getGlucose() {
		return glucose;
	}

	public void setGlucose(Float glucose) {
		this.glucose = glucose;
	}

	public Float getFructose() {
		return fructose;
	}

	public void setFructose(Float fructose) {
		this.fructose = fructose;
	}

	public Float getSucrose() {
		return sucrose;
	}

	public void setSucrose(Float sucrose) {
		this.sucrose = sucrose;
	}

	public Float getLactose() {
		return lactose;
	}

	public void setLactose(Float lactose) {
		this.lactose = lactose;
	}

	public Float getSodium() {
		return sodium;
	}

	public void setSodium(Float sodium) {
		this.sodium = sodium;
	}

	public Float getPotassium() {
		return potassium;
	}

	public void setPotassium(Float potassium) {
		this.potassium = potassium;
	}

	public Float getCalcium() {
		return calcium;
	}

	public void setCalcium(Float calcium) {
		this.calcium = calcium;
	}

	public Float getMagnesium() {
		return magnesium;
	}

	public void setMagnesium(Float magnesium) {
		this.magnesium = magnesium;
	}

	public Float getFerrum() {
		return ferrum;
	}

	public void setFerrum(Float ferrum) {
		this.ferrum = ferrum;
	}

	public Float getZinc() {
		return zinc;
	}

	public void setZinc(Float zinc) {
		this.zinc = zinc;
	}

	public Float getPhosphor() {
		return phosphor;
	}

	public void setPhosphor(Float phosphor) {
		this.phosphor = phosphor;
	}

	public Float getCopper() {
		return copper;
	}

	public void setCopper(Float copper) {
		this.copper = copper;
	}

	public Float getManganese() {
		return manganese;
	}

	public void setManganese(Float manganese) {
		this.manganese = manganese;
	}

	public Float getVitaminA() {
		return vitaminA;
	}

	public void setVitaminA(Float vitaminA) {
		this.vitaminA = vitaminA;
	}

	public Float getCarotenea() {
		return carotenea;
	}

	public void setCarotenea(Float carotenea) {
		this.carotenea = carotenea;
	}

	public Float getCaroteneb() {
		return caroteneb;
	}

	public void setCaroteneb(Float caroteneb) {
		this.caroteneb = caroteneb;
	}

	public Float getVitaminDIU() {
		return vitaminDIU;
	}

	public void setVitaminDIU(Float vitaminDIU) {
		this.vitaminDIU = vitaminDIU;
	}

	public Float getVitaminDUG() {
		return vitaminDUG;
	}

	public void setVitaminDUG(Float vitaminDUG) {
		this.vitaminDUG = vitaminDUG;
	}

	public Float getVitaminE() {
		return vitaminE;
	}

	public void setVitaminE(Float vitaminE) {
		this.vitaminE = vitaminE;
	}

	public Float getVitaminK1() {
		return vitaminK1;
	}

	public void setVitaminK1(Float vitaminK1) {
		this.vitaminK1 = vitaminK1;
	}

	public Float getVitaminB1() {
		return vitaminB1;
	}

	public void setVitaminB1(Float vitaminB1) {
		this.vitaminB1 = vitaminB1;
	}

	public Float getVitaminB2() {
		return vitaminB2;
	}

	public void setVitaminB2(Float vitaminB2) {
		this.vitaminB2 = vitaminB2;
	}

	public Float getNiacin() {
		return niacin;
	}

	public void setNiacin(Float niacin) {
		this.niacin = niacin;
	}

	public Float getVitaminB6() {
		return vitaminB6;
	}

	public void setVitaminB6(Float vitaminB6) {
		this.vitaminB6 = vitaminB6;
	}

	public Float getVitaminB12() {
		return vitaminB12;
	}

	public void setVitaminB12(Float vitaminB12) {
		this.vitaminB12 = vitaminB12;
	}

	public Float getFolate() {
		return folate;
	}

	public void setFolate(Float folate) {
		this.folate = folate;
	}

	public Float getVitaminC() {
		return vitaminC;
	}

	public void setVitaminC(Float vitaminC) {
		this.vitaminC = vitaminC;
	}

	public Float getFattyacidS() {
		return fattyacidS;
	}

	public void setFattyacidS(Float fattyacidS) {
		this.fattyacidS = fattyacidS;
	}

	public Float getPalmiticacid() {
		return palmiticacid;
	}

	public void setPalmiticacid(Float palmiticacid) {
		this.palmiticacid = palmiticacid;
	}

	public Float getStearicacid() {
		return stearicacid;
	}

	public void setStearicacid(Float stearicacid) {
		this.stearicacid = stearicacid;
	}

	public Float getEicosanoicacid() {
		return eicosanoicacid;
	}

	public void setEicosanoicacid(Float eicosanoicacid) {
		this.eicosanoicacid = eicosanoicacid;
	}

	public Float getFattyacidM() {
		return fattyacidM;
	}

	public void setFattyacidM(Float fattyacidM) {
		this.fattyacidM = fattyacidM;
	}

	public Float getOleicacid() {
		return oleicacid;
	}

	public void setOleicacid(Float oleicacid) {
		this.oleicacid = oleicacid;
	}

	public Float getGadoleicacid() {
		return gadoleicacid;
	}

	public void setGadoleicacid(Float gadoleicacid) {
		this.gadoleicacid = gadoleicacid;
	}

	public Float getErucicacid() {
		return erucicacid;
	}

	public void setErucicacid(Float erucicacid) {
		this.erucicacid = erucicacid;
	}

	public Float getFattyacidP() {
		return fattyacidP;
	}

	public void setFattyacidP(Float fattyacidP) {
		this.fattyacidP = fattyacidP;
	}

	public Float getLinoleicacid() {
		return linoleicacid;
	}

	public void setLinoleicacid(Float linoleicacid) {
		this.linoleicacid = linoleicacid;
	}

	public Float getLinolenicacid() {
		return linolenicacid;
	}

	public void setLinolenicacid(Float linolenicacid) {
		this.linolenicacid = linolenicacid;
	}

	public Float getArachidonicacid() {
		return arachidonicacid;
	}

	public void setArachidonicacid(Float arachidonicacid) {
		this.arachidonicacid = arachidonicacid;
	}

	public Float getEicosapentaenoicacid() {
		return eicosapentaenoicacid;
	}

	public void setEicosapentaenoicacid(Float eicosapentaenoicacid) {
		this.eicosapentaenoicacid = eicosapentaenoicacid;
	}

	public Float getDocosapentenoicacid() {
		return docosapentenoicacid;
	}

	public void setDocosapentenoicacid(Float docosapentenoicacid) {
		this.docosapentenoicacid = docosapentenoicacid;
	}

	public Float getDocosahexaenoicacid() {
		return docosahexaenoicacid;
	}

	public void setDocosahexaenoicacid(Float docosahexaenoicacid) {
		this.docosahexaenoicacid = docosahexaenoicacid;
	}

	public Float getTransfat() {
		return transfat;
	}

	public void setTransfat(Float transfat) {
		this.transfat = transfat;
	}

	public Float getTyrosine() {
		return tyrosine;
	}

	public void setTyrosine(Float tyrosine) {
		this.tyrosine = tyrosine;
	}

	public Float getCholesterol() {
		return cholesterol;
	}

	public void setCholesterol(Float cholesterol) {
		this.cholesterol = cholesterol;
	}

	public Float getAlcohol() {
		return alcohol;
	}

	public void setAlcohol(Float alcohol) {
		this.alcohol = alcohol;
	}


	
}