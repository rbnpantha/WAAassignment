package rbn.edu.statemanagement.service;

import rbn.edu.statemanagement.domain.User;

public interface UserService {

	boolean authenticateUser(User user);
}
