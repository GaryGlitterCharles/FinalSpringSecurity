package com.spring.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CustomerUser
{
	private int CustomerCode;
	private String CustomerName;
	private String CustomerAddress;
	private String Pincode;
	private String Email;
	private String ContactNumber;
	private String RegistrationDate;
	private String CreatedBy;
	private String ModifiedDate;

	@Id
	@Column(length = 10)
	public int getCustomerCode()
	{
		return CustomerCode;
	}

	public void setCustomerCode(int customerCode)
	{
		CustomerCode = customerCode;
	}

	@Column(length = 30)
	public String getCustomerName()
	{
		return CustomerName;
	}

	public void setCustomerName(String customerName)
	{
		CustomerName = customerName;
	}

	@Column(length = 100)
	public String getCustomerAddress()
	{
		return CustomerAddress;
	}

	public void setCustomerAddress(String customerAddress)
	{
		CustomerAddress = customerAddress;
	}

	@Column(length = 6)
	public String getPincode()
	{
		return Pincode;
	}

	public void setPincode(String pincode)
	{
		Pincode = pincode;
	}

	@Column(length = 100)
	public String getEmail()
	{
		return Email;
	}

	public void setEmail(String email)
	{
		Email = email;
	}

	@Column(length = 20)
	public String getContactNumber()
	{
		return ContactNumber;
	}

	public void setContactNumber(String contactNumber)
	{
		ContactNumber = contactNumber;
	}

	public String getRegistrationDate()
	{
		return RegistrationDate;
	}

	public void setRegistrationDate(String registrationDate)
	{
		RegistrationDate = registrationDate;
	}

	public String getCreatedBy()
	{
		return CreatedBy;
	}

	public void setCreatedBy(String createdBy)
	{
		CreatedBy = createdBy;
	}

	public String getModifiedDate()
	{
		return ModifiedDate;
	}

	public void setModifiedDate(String modifiedDate)
	{
		ModifiedDate = modifiedDate;
	}

}
