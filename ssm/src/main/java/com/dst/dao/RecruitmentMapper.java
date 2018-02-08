package com.dst.dao;

import java.util.List;

import com.dst.bean.Recruitment;

public interface RecruitmentMapper {

	List<Recruitment> selectAll();

	void insertRecruitment(Recruitment recruitment);

	Recruitment selectOne(int id);

	void updateRecruitment(Recruitment recruitment);

	void deleteRecruitmentById(int id);

}
