package com.dst.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dst.bean.Recruitment;
import com.dst.dao.RecruitmentMapper;

@Service
public class RecruitmentService {
	
	@Autowired
	RecruitmentMapper recruitmentMapper;
	
	public List<Recruitment> getAll() {
		return this.recruitmentMapper.selectAll();
	}

	public void addRecruitment(Recruitment recruitment) {
		 this.recruitmentMapper.insertRecruitment(recruitment);
	}

	public Recruitment getOne(int id) {
		return this.recruitmentMapper.selectOne(id);
	}

	public void updateRecruitment(Recruitment recruitment) {
		this.recruitmentMapper.updateRecruitment(recruitment);
		
	}

	public void deleteRecruitmentById(int id) {
		this.recruitmentMapper.deleteRecruitmentById(id);
	}
	
}
