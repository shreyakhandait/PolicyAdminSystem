package com.policysystem.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.policysystem.entity.CustomerPolicy;
import com.policysystem.entity.SearchPolicy;
import com.policysystem.repository.CustomerPolicyRepository;

@Service
@Transactional
public class CustomerPolicyService {

	@Autowired
	private CustomerPolicyRepository customerPolicyRepository;

	public CustomerPolicy addCustomerPolicy(CustomerPolicy customerPolicy) {
		customerPolicy.setPolicyNumber("metlifes");
		return this.customerPolicyRepository.save(customerPolicy);
	}
	
	public CustomerPolicy searchCustomerPolicy(SearchPolicy searchPolicy) {
		return this.customerPolicyRepository.findByPolicyNumberAndProduct(searchPolicy.getPolicyNumber(), searchPolicy.getProduct());
	}

}
