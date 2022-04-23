package Modele;

import java.util.Date;

public class User {
	
	 
	String name ;
	String lastname;
	String email;
	String status;
	Date registration_date;
	String password;
	
	
	public User() {
		super();
	}

	public User(String name, String lastname, String email, String status, Date registration_date) {
		super();
		this.name = name;
		this.lastname = lastname;
		this.email = email;
		this.status = status;
		this.registration_date = registration_date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getRegistration_date() {
		return registration_date;
	}

	public void setRegistration_date(Date registration_date) {
		this.registration_date = registration_date;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

	
}
