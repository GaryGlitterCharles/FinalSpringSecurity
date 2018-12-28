package com.spring.domain;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;

@Embeddable
public class UserRoleId implements Serializable
{
  private static final long serialVersionUID = 6202269445639364170L;
  private User user;
  private Role role;
  
  @ManyToOne
  public User getUser()
  {
    return user;
  }
  public void setUser(User user)
  {
    this.user = user;
  }
  @ManyToOne
  public Role getFeature()
  {
    return role;
  }
  public void setFeature(Role feature)
  {
    this.role = feature;
  }
}
