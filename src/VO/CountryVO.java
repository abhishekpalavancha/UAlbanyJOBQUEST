package VO;

import java.io.Serializable;

public class CountryVO implements Serializable {
	
		private int country_Id;
		private String country_Name;
		private String country_Desc;
		public String getCountry_Desc() {
			return country_Desc;
		}
		public void setCountry_Desc(String country_Desc) {
			this.country_Desc = country_Desc;
		}
		public int getCountry_Id() {
			return country_Id;
		}
		public void setCountry_Id(int country_Id) {
			this.country_Id = country_Id;
		}
		public String getCountry_Name() {
			return country_Name;
		}
		public void setCountry_Name(String country_Name) {
			this.country_Name = country_Name;
		}
		
		
}


