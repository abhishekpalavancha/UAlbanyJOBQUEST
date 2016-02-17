package VO;

import java.io.Serializable;

public class LoginVO implements Serializable {

	private int login_Id;
	private String username;
	private String email;
	private String password;
	private String user_Type;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getLogin_Id() {
		return login_Id;
	}
	public void setLogin_Id(int login_Id) {
		this.login_Id = login_Id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUser_Type() {
		return user_Type;
	}
	public void setUser_Type(String user_Type) {
		this.user_Type = user_Type;
	}
	
}
