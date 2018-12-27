package com.freshvotes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.freshvotes.domain.CustomerUser;
import com.freshvotes.repositories.UserCRUDrepositoy;

@Service
public class UserCRUDservice
{
	@Autowired
	private UserCRUDrepositoy userRepo;
	
	public void saveUserDetails(CustomerUser customerUser)
	{
		userRepo.save(customerUser);
	}
	public void deleteUserDetails(CustomerUser customerCode)
	{
		userRepo.deleteById(customerCode.getCustomerCode());
	}
	public CustomerUser searchUser(Integer customerCode)
	{
		 return userRepo.findByCustomerCode(customerCode);
	}
	public CustomerUser searchUserByCustomerName(String customerName)
	{
		 return userRepo.findByCustomerName(customerName);
	}
	public List<CustomerUser> getdetails()
	{
		return userRepo.findAll();
	}
}
 