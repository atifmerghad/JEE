package com.dao.impl;

import org.springframework.stereotype.Repository;

import com.bo.User;
import com.dao.UserDao;
import com.genericdao.impl.HibernateSpringGenericDaoImpl;

@Repository
public class UserDaoImpl extends HibernateSpringGenericDaoImpl<User, Long> implements UserDao {

	public UserDaoImpl() {
		super(User.class);
	}

}
