package com.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bo.User;
import com.dao.UserDao;
import com.services.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	UserDao userDao;

	@Override
	public void addUser(User u) {
		userDao.create(u);
	}

	@Override
	public List<User> getAllUsers() {
		return userDao.getAll();
	}

	@Override
	public void updateUser(User u) {
		userDao.update(u);
	}

	@Override
	public Boolean deleteUser(User u) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserById(Long id) {
		
		return userDao.findById(id);
	}
	
}
