package com.policysystem.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "customerAddressTable")
public class Address {

	@Id
	@GeneratedValue
	private int addressId;
	
	@Size(min=5, max=50, message="Address should be of 5 letters or max 50 letters" )
	@NotBlank(message = "Email Should not be blank")
	private String details;
	
	@Size(min=5, max=10, message="Pin Code should be of 5 digit or max 10 digit" )
	@NotBlank(message = "Pin Code Should not be blank")
	private String pinCode;
	
	@Size(min=3, max=20, message="City should be of 3 letters or max 20 letters" )
	@NotBlank(message = "City Should not be blank")
	private String city;
	
	@Size(min=3, max=20, message="Country should be of 3 letters or max 20 letters" )
	@NotBlank(message = "Country Should not be blank")
	private String country;

	public Address() {
		super();
	}

	public Address(String details, String pinCode, String city, String country) {
		super();
		this.details = details;
		this.pinCode = pinCode;
		this.city = city;
		this.country = country;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getAddressId() {
		return addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}

}
