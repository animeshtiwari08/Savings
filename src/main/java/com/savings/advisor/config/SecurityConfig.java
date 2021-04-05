package com.savings.advisor.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configurers.provisioning.InMemoryUserDetailsManagerConfigurer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.configurers.ExpressionUrlAuthorizationConfigurer;
import org.springframework.security.config.annotation.web.configurers.FormLoginConfigurer;
import org.springframework.security.core.userdetails.User;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter
{
    protected void configure(final AuthenticationManagerBuilder auth) throws Exception {
        final User.UserBuilder users = User.withDefaultPasswordEncoder();
        ((InMemoryUserDetailsManagerConfigurer)auth.inMemoryAuthentication()
        		.withUser(users.username("testuser").password("test123")
        				.roles(new String[] { "USER" })))
        .withUser(users.username("admin").password("admin").roles(new String[] { "ADMIN" }));
    }
    
    protected void configure(final HttpSecurity http) throws Exception {
        //((FormLoginConfigurer)((FormLoginConfigurer)((HttpSecurity)((ExpressionUrlAuthorizationConfigurer.AuthorizedUrl)
        		http.authorizeRequests()
        		
        		.antMatchers(new String[] { "/admin" }).hasRole("ADMIN")
        		.anyRequest().authenticated()
        		.and()
	        		.formLogin().loginPage("/digitalbanking/login")
	        		.defaultSuccessUrl("/digitalbanking/home", true)
	        		.loginProcessingUrl("/authenticateTheUser")
	        		.permitAll()
	        		.and()
	        		.logout().permitAll();
    }
    
    @Override
    public void configure(WebSecurity web) throws Exception {
      web
        .ignoring()
           .antMatchers("/resources/**"); // #3
    }
    
    
}