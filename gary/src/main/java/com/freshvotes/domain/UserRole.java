package com.freshvotes.domain;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity
public class UserRole {
	private UserRoleId pk;

	@EmbeddedId
	public UserRoleId getPk() {
		return pk;
	}

	public void setPk(UserRoleId pk) {
		this.pk = pk;
	}

}
