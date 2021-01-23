package com.policysystem.entity;

import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.validation.annotation.Validated;

@Entity
@Table(name = "customerPolicyTable")
public class CustomerPolicy {
	

	@Id
	private String policyNumber;

	@Enumerated(EnumType.STRING)
    @Column(length = 100)
	private Product product;
	
	@NotBlank(message = "Customer Name cannot be left blank")
	private String custName;
	
	@Size(min = 10, max = 12, message = "Number should be of 10 digits or max 12 digits")
	@Pattern(regexp = "[0-9]+", message = "Phone should be numeric")
	private String custMobileNumber;
	
	@NotBlank(message = "Email Should not be blank")
	@Email(regexp = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$", message = "Email Should be like XYZ@smart.com")
	private String custEmailAddress;
	
	@Column(name = "date", columnDefinition = "DATE")
	@DateTimeFormat (pattern = "yyyy-MM-dd")
	@Past(message="Date of Birth should be past date")
	private Date custDOB;

	@OneToOne(cascade = CascadeType.ALL)
	private Address custAddress;

	public CustomerPolicy() {
		super();
	}

	public CustomerPolicy(Product product, String custName, String custMobileNumber, String custEmailAddress,
			Date custDOB, Address custAddress) {
		super();
		this.product = product;
		this.custName = custName;
		this.custMobileNumber = custMobileNumber;
		this.custEmailAddress = custEmailAddress;
		this.custDOB = custDOB;
		this.custAddress = custAddress;
	}

	public String getPolicyNumber() {
		return policyNumber;
	}

	public void setPolicyNumber(String policyNumber) {
		this.policyNumber = policyNumber;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getCustMobileNumber() {
		return custMobileNumber;
	}

	public void setCustMobileNumber(String custMobileNumber) {
		this.custMobileNumber = custMobileNumber;
	}

	public String getCustEmailAddress() {
		return custEmailAddress;
	}

	public void setCustEmailAddress(String custEmailAddress) {
		this.custEmailAddress = custEmailAddress;
	}

	public Date getCustDOB() {
		return custDOB;
	}

	public void setCustDOB(Date custDOB) {
		this.custDOB = custDOB;
	}

	public Address getCustAddress() {
		return custAddress;
	}

	public void setCustAddress(Address custAddress) {
		this.custAddress = custAddress;
	}

}
