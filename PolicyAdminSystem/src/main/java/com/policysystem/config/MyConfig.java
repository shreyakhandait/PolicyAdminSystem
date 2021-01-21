package com.policysystem.config;

//import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
//@Configuration
//@EnableWebSecurity
//public class MyConfig extends WebSecurityConfigurerAdapter {
//
//	
//	
//	@Override
//	public void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth.inMemoryAuthentication()
//			.withUser("JAY").password("RAJ").roles("ADMIN");
//	}
//	
//	@Override
//	protected void configure(HttpSecurity http) throws Exception{
//		http
//		.csrf().disable()
//		.authorizeRequests()
//		.antMatchers("/**").hasAnyRole("ADMIN")
//		.and().formLogin().loginPage("/login")
//			.defaultSuccessUrl("/user/addPolicy",true).failureForwardUrl("/ud")
//		.permitAll()
//		.and().logout();
//	}
//}
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
public class MyConfig extends WebSecurityConfigurerAdapter {
	@Override
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
		BCryptPasswordEncoder b = new BCryptPasswordEncoder();
		String password = b.encode("admin");
		auth.inMemoryAuthentication()
			.withUser("admin").password("{noop}admin").roles("ADMIN");
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
		http.headers().frameOptions().disable().and()
			.csrf().disable()
			.authorizeRequests()
			.antMatchers("/**").hasAnyRole("ADMIN")
			.and().formLogin().loginPage("/login").loginProcessingUrl("/perform_login")
				.defaultSuccessUrl("/home",true)
			.permitAll()
			.and().logout();
	}
}	