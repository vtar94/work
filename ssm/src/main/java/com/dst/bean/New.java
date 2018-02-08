package com.dst.bean;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class New implements Serializable{
	
	private int newId;
	private String author;
	private String title;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date date;
	private String image;
	private String content;
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
	public int getNewId() {
		return newId;
	}
	public void setNewId(int newId) {
		this.newId = newId;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	@Override
	public String toString() {
		return "New [newId=" + newId + ", author=" + author + ", title=" + title + ", date=" + date + ", image=" + image
				+ ", content=" + content + "]";
	}
	
}
