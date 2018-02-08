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
	
	//�������
	@RequestMapping("/addNew")
	public String addNew(New news,@RequestParam("file")MultipartFile[] file,HttpServletRequest request) throws IOException {
			//��ȡ�ļ�Ҫ�������·��
			String path = request.getSession().getServletContext().getRealPath("img");  
	        //׼�����ݿ����ͼƬ·���ַ���ƴ��
	        StringBuffer wholeUrl = new StringBuffer();
	        File dir = null;
	        //ѭ�����ܱ������ͼƬ
	        for(int i=0;i<file.length;i++) {
	        	//��ȡ�ļ�ȫ����
	            String fileName = file[i].getOriginalFilename();
	            //ƴ��ͼƬ·��
	            if(i==file.length-1) { 
	            	wholeUrl.append("http://localhost:8080/ssm/img/"+fileName);
	            }else {
	            	wholeUrl.append("http://localhost:8080/ssm/img/"+fileName+"&");
	            }
	            //�����ļ���
		        dir = new File(path,fileName); 
		        if(!dir.exists()){  
		            dir.mkdirs();  
		        }  
		        //MultipartFile�Դ��Ľ��������ϴ��ļ�
		        file[i].transferTo(dir); 
	        }
	        //��·�����浽���ݿ�
	        String wholeUrl2 = wholeUrl.toString();
	        news.setImage(wholeUrl2);
		
		this.newService.addNew(news);
		return "redirect://showAll";
	}
	
	//��ѯ��������
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
	
	//��ѯ�������Ų����ظ�ǰ̨json����
	@RequestMapping("showAllNews")
	@ResponseBody
	public ArrayList<New> showAllNews2() {
		ArrayList<New> newsList = this.newService.getAll();
		return newsList;
	}
	
	//����ID��ѯ����
	@RequestMapping("selectById")
	public String selectById(@RequestParam("id") int id, Model model) {
		New oneNew = this.newService.selectById(id);
		model.addAttribute("New",oneNew);
		return "update";
	}
	
	//��������
	@RequestMapping("/updateNew")
	public String updateNew(New oneNew,@RequestParam("file")MultipartFile[] file,HttpServletRequest request) throws IOException {
        if(file.length!=1) {
        	//��ȡ�ļ�Ҫ�������·��
    		String path = request.getSession().getServletContext().getRealPath("img");  
            //׼�����ݿ����ͼƬ·���ַ���ƴ��
            StringBuffer wholeUrl = new StringBuffer();
            File dir = null;
        	//ѭ�����ܱ������ͼƬ
            for(int i=0;i<file.length;i++) {
            	//��ȡ�ļ�ȫ����
                String fileName = file[i].getOriginalFilename();
                //ƴ��ͼƬ·��
                if(i==file.length-1) {
                	wholeUrl.append("http://localhost:8080/ssm/img/"+fileName);
                }else {
                	wholeUrl.append("http://localhost:8080/ssm/img/"+fileName+"&");
                }
                //�����ļ���
    	        dir = new File(path,fileName); 
    	        if(!dir.exists()){  
    	            dir.mkdirs();  
    	        }  
    	        //MultipartFile�Դ��Ľ��������ϴ��ļ�
    	        file[i].transferTo(dir); 
            }
            //��·�����浽���ݿ�
            String wholeUrl2 = wholeUrl.toString();
            oneNew.setImage(wholeUrl2);
        }else {
        	oneNew.setImage("http://localhost:8080/ssm/img/nop.png");
        }
		this.newService.updateNew(oneNew);
		return "redirect://showAll";
	}
	
	//ɾ������
	@RequestMapping("/deleteById")
	public String deleteNew(@RequestParam("id") int id) {
		this.newService.deleteNew(id);
		return "redirect://showAll";
	}
}
