package com.spring.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter {
  
  @Autowired
  private UserDetailsService userDetailsService;

  @Bean
  public PasswordEncoder getPasswordEncoder() {
    return new BCryptPasswordEncoder();
  }
  
  @Override
  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    auth
      .userDetailsService(userDetailsService)
      .passwordEncoder(getPasswordEncoder());
        
  }
  
  @Override
  protected void configure(HttpSecurity http) throws Exception {
    http
        .authorizeRequests()
          .antMatchers("/css/**").permitAll()
          .antMatchers("/admin/**").hasRole("ADMIN")
          .antMatchers("/register").hasRole("ADMIN")
          .antMatchers("/dashboard").hasRole("USER")
          .antMatchers("/saveUser").hasRole("USER")
          .antMatchers("/deleteUser").hasRole("USER")
          .antMatchers("/updateUser").hasRole("USER")
          .antMatchers("/searchUser").hasRole("USER")
          .antMatchers("/allDetails").hasRole("USER")
          .anyRequest().hasRole("USER")
          .antMatchers("/resources/**").permitAll().anyRequest().permitAll()
          .and()
        .formLogin()
          .loginPage("/login")
          .defaultSuccessUrl("/dashboard")
          .permitAll()
          .and()
        .logout()
          .logoutUrl("/logout")
          .permitAll();
  }
}