package com.dst.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dst.bean.Recruitment;
import com.dst.service.RecruitmentService;

@Controller
public class RecruitmentController {

	@Autowired
	RecruitmentService recruitmentService;
	
	@RequestMapping("/getAllRecruitment")
	@ResponseBody
	public List<Recruitment> getAll() {
//		List<Recruitment> recruitmentList = this.recruitmentService.getAll();
//		System.out.println(recruitmentList); 
//		model.addAttribute("recruitmentList", recruitmentList);
		return this.recruitmentService.getAll();
	}
	
	@RequestMapping("/addRecruitment")
	public String addRecruitment(Recruitment recruitment) {
		System.out.println(recruitment.toString());
		recruitment.setDate(new Date());
		this.recruitmentService.addRecruitment(recruitment);
		return "redirect://allRecruitment";
	}
	
	@RequestMapping("/allRecruitment")
	public String getAllRecruitment(Model model) {
		List<Recruitment> recruitmentList = this.recruitmentService.getAll();
		model.addAttribute("recruitmentList", recruitmentList);
		return "recruit_gl";
	}
	
	@RequestMapping("/selectRecruitmentById")
	public String selectRecruitmentById(int id,Model model) {
		Recruitment recruitment = this.recruitmentService.getOne(id);
		model.addAttribute("recruitment",recruitment);
		return "recruit_xg";
	}
	
	@RequestMapping("/updateRecruitment")
	public String updateRecruitment(Recruitment recruitment) {
		recruitment.setDate(new Date());
		this.recruitmentService.updateRecruitment(recruitment);
		return "redirect://allRecruitment";
	}
	
	@RequestMapping("/deleteRecruitmentById")
	public String deleteRecruitmentById(int id) {
		this.recruitmentService.deleteRecruitmentById(id);
		return "redirect://allRecruitment";
	}
		
}
