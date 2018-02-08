package com.dst.dao;

import java.util.ArrayList;

import com.dst.bean.New;

public interface NewMapper {
	
	int insertNew(New news);

	ArrayList<New> selectAll();

	void modifyNew(Integer id);

	New selectById(int id);

	void updateNew(New oneNew);

	void deleteNew(int id);
	
}
