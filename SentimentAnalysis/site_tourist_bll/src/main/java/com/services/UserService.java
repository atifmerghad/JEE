package com.services;

import java.util.List;

import com.bo.User;

public interface UserService {
	public void addUser(User u);
	public List<User> getAllUsers();
	public void updateUser(User u);
	public Boolean deleteUser(User u);
	public User getUserById(Long id);
}
