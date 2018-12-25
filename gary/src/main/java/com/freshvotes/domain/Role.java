package com.freshvotes.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class Role {
	@Column(name = "ID")
	private int id;
	private String roleAdmin;
	private String roleUser;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_Sequence")
	@SequenceGenerator(name = "id_Sequence", sequenceName = "ID_SEQ")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRoleAdmin() {
		return roleAdmin;
	}

	public void setRoleAdmin(String roleAdmin) {
		this.roleAdmin = roleAdmin;
	}

	public String getRoleUser() {
		return roleUser;
	}

	public void setRoleUser(String roleUser) {
		this.roleUser = roleUser;
	}

}
