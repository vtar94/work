package com.dst.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dst.bean.User;
import com.dst.dao.UserMapper;

@Service
public class UserService {
	
	@Autowired
	UserMapper userMapper;
	
	public User getUser (Integer userId) {
		return this.userMapper.selectById(userId);
	}
	
	public List<User> getAllUser(){
		return this.userMapper.selectAllUser();
	}
	
	public User getUserByIdAndPassword(String username, String password) {
		return this.userMapper.userLogin(username, password);
	}
	
	public int addUser(User user) {
		return this.userMapper.insertUser(user);
	}
}
