package com.dst.bean;

import java.io.Serializable;
import java.util.Date;

public class Recruitment implements Serializable{
	
	//ְλid
	private int rId;
	//ְλ����
	private String name;
	//ְλ���
	private String type;
	//�����ص�
	private String address;
	//��Ƹ����
	private int num;
	//��������
	private Date date;
	//����ְ��
	private String duty;
	//ְλҪ��
	private String requirement;
	//н��
	private String salary;
	//��������
	private String welfare;
	
	public String getWelfare() {
		return welfare;
	}
	public void setWelfare(String welfare) {
		this.welfare = welfare;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public int getrId() {
		return rId;
	}
	public void setrId(int rId) {
		this.rId = rId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
	}
	public String getRequirement() {
		return requirement;
	}
	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}
	
	
	@Override
	public String toString() {
		return "Recruitment [rId=" + rId + ", name=" + name + ", type=" + type + ", address=" + address + ", num=" + num
				+ ", date=" + date + ", duty=" + duty + ", requirement=" + requirement + ", salary=" + salary
				+ ", welfare=" + welfare + "]";
	}
	
	
}
