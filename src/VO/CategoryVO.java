package VO;

import java.io.Serializable;

public class CategoryVO implements Serializable {
	private int cat_Id;
	private String cat_Name;
	private String cat_Desc;
	public int getCat_Id() {
		return cat_Id;
	}
	public void setCat_Id(int cat_Id) {
		this.cat_Id = cat_Id;
	}
	public String getCat_Name() {
		return cat_Name;
	}
	public void setCat_Name(String cat_Name) {
		this.cat_Name = cat_Name;
	}
	public String getCat_Desc() {
		return cat_Desc;
	}
	public void setCat_Desc(String cat_Desc) {
		this.cat_Desc = cat_Desc;
	}
	

}
