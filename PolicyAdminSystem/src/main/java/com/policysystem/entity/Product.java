package com.policysystem.entity;

public enum Product {
	MONEY("money"), CLOTHES("clothes"), BOOKS("books"), EDIBLE("edible"), OTHER("other");
	
	private String  name;

	private Product(String name) {
		this.name = name;
	}
	
}
