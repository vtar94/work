package com.dst.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dst.bean.New;
import com.dst.dao.NewMapper;

@Service
public class NewService {
	@Autowired
	NewMapper newMapper;
	
	public int addNew(New news){
		return this.newMapper.insertNew(news);
	}

	public ArrayList<New> getAll() {
		return this.newMapper.selectAll();
	}

	public New selectById(int id) {
		return this.newMapper.selectById(id);
	}

	public void updateNew(New oneNew) {
		this.newMapper.updateNew(oneNew);
	}

	public void deleteNew(int id) {
		this.newMapper.deleteNew(id);
	}

	
}
