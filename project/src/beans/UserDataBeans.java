package beans;

import java.io.Serializable;

public class UserDataBeans implements Serializable {

	private int id;
	private String name;
	private String address;
	private String mail;
	private String loginId;
	private String password;

	public UserDataBeans(int id, String loginIdData, String nameData) {
		this.id = id;
		this.loginId = loginIdData;
		this.name = nameData;
	}

	public UserDataBeans() {
		this.name = "";
		this.address = "";
		this.mail = "";
		this.loginId = "";
		this.password = "";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
