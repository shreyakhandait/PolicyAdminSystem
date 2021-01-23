package com.policysystem.entity;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class Credentials {

	@NotBlank(message = "Unser Name cannot be empty!!")
	@Size(min = 5, max = 20, message = "Username must be 5-20 characters !!")
	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
