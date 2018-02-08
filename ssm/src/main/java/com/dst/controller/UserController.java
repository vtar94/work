package com.dst.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dst.bean.User;
import com.dst.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	//根据userId查询用户
	@RequestMapping("/getUser")
	public String getUser(Integer userId,Model model) {
		User user = this.userService.getUser(userId);
		model.addAttribute("user",user);
		return "success";
	}
	
	//用户登录
	@RequestMapping("/userLogin")
	public String userLogin(@RequestParam("username") String username,@RequestParam("password") String password) {
		User user = this.userService.getUserByIdAndPassword(username, password);
		if(user!=null) {
			return "index";
		}else {
			return "login";
		}
	}
	
	//查询全部user
	@RequestMapping("/getAllUser")
	public void getAllUser() {
		List<User> users = this.userService.getAllUser();
		System.out.println(users);
	}
	
	@RequestMapping("/addUser")
	public String addUser(User user){
		System.out.println("!!!!!!!!!!!!!!!!!!!");
		System.out.println(user);
		int status = this.userService.addUser(user);
		
		return null;
	}
	
	
	//跳转到上传下载界面
	@RequestMapping("/toupdownload")
	public String toUpDownLoad() {
		return "updownload";
	}
	
	@RequestMapping(value="/upload",method=RequestMethod.POST)  
    @ResponseBody  
    public String upload(MultipartFile file,HttpServletRequest request,@RequestParam("password")String text) throws IOException{
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!");
		System.out.println(text);
        String path = request.getSession().getServletContext().getRealPath("img");  
        System.out.println(path);
        String fileName = file.getOriginalFilename();    
        System.out.println(fileName);
        File dir = new File(path,fileName);          
        if(!dir.exists()){  
            dir.mkdirs();  
        }  
        //MultipartFile自带的解析方法  
        file.transferTo(dir);  
        return "ok!"; 
    }  
	
	@RequestMapping("/down")  
    public void down(HttpServletRequest request,HttpServletResponse response) throws Exception{  
        //模拟文件，myfile.txt为需要下载的文件  
        String fileName = request.getSession().getServletContext().getRealPath("upload")+"/myfile.txt";  
        //获取输入流  
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));  
        //假如以中文名下载的话  
        String filename = "下载文件.txt";  
        //转码，免得文件名中文乱码  
        filename = URLEncoder.encode(filename,"UTF-8");  
        //设置文件下载头  
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);    
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型    
        response.setContentType("multipart/form-data");   
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());  
        int len = 0;  
        while((len = bis.read()) != -1){  
            out.write(len);  
            out.flush();  
        }  
        out.close();  
    }  
}  
      

