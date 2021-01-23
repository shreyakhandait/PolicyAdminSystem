package com.policysystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.policysystem.entity.CustomerPolicy;
import com.policysystem.entity.Product;

public interface CustomerPolicyRepository extends JpaRepository<CustomerPolicy, Integer> {

	public CustomerPolicy findByPolicyNumberAndProduct(String policyNumber, Product product);
}
