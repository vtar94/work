package com.dst.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.dst.bean.User;

public interface UserMapper {
	
	User selectById(Integer userId);
	
	List<User> selectAllUser();
	
	User userLogin(@Param("username")String username,@Param("password")String password);
	
	int insertUser(User user);
}
