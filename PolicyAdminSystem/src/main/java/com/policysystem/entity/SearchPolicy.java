package com.policysystem.entity;

import javax.validation.constraints.Size;

public class SearchPolicy {

	@Size(min=3, message = "Minimum 3 characters/dgits required")
	private String policyNumber;
	
	private Product product;

	public SearchPolicy(@Size(min = 3, message = "Minimum 3 characters/dgits required") String policyNumber,
			Product product) {
		super();
		this.policyNumber = policyNumber;
		this.product = product;
	}

	public SearchPolicy() {
		super();
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
	
}
