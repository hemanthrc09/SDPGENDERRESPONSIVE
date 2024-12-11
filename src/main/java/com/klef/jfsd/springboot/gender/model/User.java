package com.klef.jfsd.springboot.gender.model;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "user_table")
public class User {
	@Id  // primary key = unique + not null
	@GeneratedValue(strategy = GenerationType.IDENTITY)  //auto increment
	@Column(name = "user_id")
	private int id;
	@Column(name = "user_name", nullable = false, length = 100)
	private String name;
	@Column(name = "user_gender", nullable = false, length = 10)
	private String gender;
	@Column(name = "user_dateofbirth", nullable = false, length = 20)
	private String dateofbirth;
	@Column(name = "user_email", nullable = false, length = 100)
	private String email;
	@Column(name = "user_password", nullable = false, length = 100)
	private String password;
	@Column(name = "user_location", nullable = false, length = 100)
	private String location;
	@Column(name = "user_contact", nullable = false, length = 20)
	private String contact;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
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
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	

}
