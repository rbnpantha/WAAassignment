package rbn.edu.statemanagement.serviceImpl;

import org.springframework.stereotype.Service;

import rbn.edu.statemanagement.domain.User;
import rbn.edu.statemanagement.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	public boolean authenticateUser(User user) {

		if ("admin".equals(user.getUserName()) && "Test123".equals(user.getPassword()))
			return true;
		else
			return false;

	}
}
