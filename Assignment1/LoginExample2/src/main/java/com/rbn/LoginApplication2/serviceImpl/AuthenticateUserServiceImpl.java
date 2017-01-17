package com.rbn.LoginApplication2.serviceImpl;

import org.springframework.stereotype.Service;

import com.rbn.LoginApplication2.service.AuthenticateUserService;

@Service
public class AuthenticateUserServiceImpl implements AuthenticateUserService {

	public boolean authenticateUser(String name, String pass) {

		if (name.equals("admin") && pass.equals("Test123"))
			return true;
		else
			return false;

	}
}
