package com.dst.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dst.bean.New;
import com.dst.service.NewService;

@Controller
public class NewController {
	
	@Autowired
	NewService newService;
	
	//添加新闻
	@RequestMapping("/addNew")
	public String addNew(New news,@RequestParam("file")MultipartFile[] file,HttpServletRequest request) throws IOException {
			//获取文件要将保存的路径
			String path = request.getSession().getServletContext().getRealPath("img");  
	        //准备数据库多张图片路径字符串拼接
	        StringBuffer wholeUrl = new StringBuffer();
	        File dir = null;
	        //循环接受保存多张图片
	        for(int i=0;i<file.length;i++) {
	        	//获取文件全名称
	            String fileName = file[i].getOriginalFilename();
	            //拼接图片路径
	            if(i==file.length-1) { 
	            	wholeUrl.append("http://localhost:8080/ssm/img/"+fileName);
	            }else {
	            	wholeUrl.append("http://localhost:8080/ssm/img/"+fileName+"&");
	            }
	            //创建文件流
		        dir = new File(path,fileName); 
		        if(!dir.exists()){  
		            dir.mkdirs();  
		        }  
		        //MultipartFile自带的解析方法上传文件
		        file[i].transferTo(dir); 
	        }
	        //将路径保存到数据库
	        String wholeUrl2 = wholeUrl.toString();
	        news.setImage(wholeUrl2);
		
		this.newService.addNew(news);
		return "redirect://showAll";
	}
	
	//查询所有新闻
	@RequestMapping("showAll")
	public String showAllNews1(Model model){
		ArrayList<New> newsList = this.newService.getAll();
		for(int i=0;i<newsList.size();i++) {
			New oneNew = newsList.get(i);
			if(oneNew.getImage()!=null) {
				String url = oneNew.getImage();
				if(url.indexOf("&")!=-1) {
					String url2 = url.substring(0, url.indexOf("&"));
					oneNew.setImage(url2);
				}else {
					oneNew.setImage(url);
				}
				
			}
		}
		model.addAttribute("newsList", newsList);
		return "gl";
	}
	
	//查询所有新闻并返回给前台json数据
	@RequestMapping("showAllNews")
	@ResponseBody
	public ArrayList<New> showAllNews2() {
		ArrayList<New> newsList = this.newService.getAll();
		return newsList;
	}
	
	//根据ID查询新闻
	@RequestMapping("selectById")
	public String selectById(@RequestParam("id") int id, Model model) {
		New oneNew = this.newService.selectById(id);
		model.addAttribute("New",oneNew);
		return "update";
	}
	
	//更新新闻
	@RequestMapping("/updateNew")
	public String updateNew(New oneNew,@RequestParam("file")MultipartFile[] file,HttpServletRequest request) throws IOException {
        if(file.length!=1) {
        	//获取文件要将保存的路径
    		String path = request.getSession().getServletContext().getRealPath("img");  
            //准备数据库多张图片路径字符串拼接
            StringBuffer wholeUrl = new StringBuffer();
            File dir = null;
        	//循环接受保存多张图片
            for(int i=0;i<file.length;i++) {
            	//获取文件全名称
                String fileName = file[i].getOriginalFilename();
                //拼接图片路径
                if(i==file.length-1) {
                	wholeUrl.append("http://localhost:8080/ssm/img/"+fileName);
                }else {
                	wholeUrl.append("http://localhost:8080/ssm/img/"+fileName+"&");
                }
                //创建文件流
    	        dir = new File(path,fileName); 
    	        if(!dir.exists()){  
    	            dir.mkdirs();  
    	        }  
    	        //MultipartFile自带的解析方法上传文件
    	        file[i].transferTo(dir); 
            }
            //将路径保存到数据库
            String wholeUrl2 = wholeUrl.toString();
            oneNew.setImage(wholeUrl2);
        }else {
        	oneNew.setImage("http://localhost:8080/ssm/img/nop.png");
        }
		this.newService.updateNew(oneNew);
		return "redirect://showAll";
	}
	
	//删除新闻
	@RequestMapping("/deleteById")
	public String deleteNew(@RequestParam("id") int id) {
		this.newService.deleteNew(id);
		return "redirect://showAll";
	}
}
