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
		customerPolicy.setPolicyNumber(getAlphaNumericString(8));
		return this.customerPolicyRepository.save(customerPolicy);
	}

	public CustomerPolicy searchCustomerPolicy(SearchPolicy searchPolicy) {
		return this.customerPolicyRepository.findByPolicyNumberAndProduct(searchPolicy.getPolicyNumber(),
				searchPolicy.getProduct());
	}

	String getAlphaNumericString(int n) {

		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";
		StringBuilder sb = new StringBuilder(n);

		for (int i = 0; i < n; i++) {

			// generate a random number between
			// 0 to AlphaNumericString variable length
			int index = (int) (AlphaNumericString.length() * Math.random());

			// add Character one by one in end of sb
			sb.append(AlphaNumericString.charAt(index));
		}
		// return the resultant string
		return sb.toString();
	}
}
