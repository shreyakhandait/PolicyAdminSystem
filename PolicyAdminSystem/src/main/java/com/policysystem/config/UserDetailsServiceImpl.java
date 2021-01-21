package com.policysystem.config;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Properties;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;

public class UserDetailsServiceImpl implements UserDetailsService {

	private PasswordEncoder passwordEncoder;

	public UserDetailsServiceImpl(PasswordEncoder passwordEncoder) {
		this.passwordEncoder = passwordEncoder;
	}
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Properties p = new Properties();
		try {
			InputStream is = new FileInputStream("src/main/resources/application.properties");
			try {
				p.load(is);
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		if(p.getProperty("username").equals(username)) {
			SimpleGrantedAuthority simpleGrantedAuthority = new SimpleGrantedAuthority("admin");
			return new User(username, passwordEncoder.encode(p.getProperty("password")), List.of(simpleGrantedAuthority));
		}
		else {
			throw new UsernameNotFoundException("user not found with username " + username);
		}
	}

}
