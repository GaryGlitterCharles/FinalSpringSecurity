package com.spring.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.domain.CustomerUser;

public interface UserCRUDrepositoy extends JpaRepository<CustomerUser, Integer>
{
	public CustomerUser findByCustomerCode(int customerUser);
	public CustomerUser findByCustomerName(String customerName);
		
	
}
