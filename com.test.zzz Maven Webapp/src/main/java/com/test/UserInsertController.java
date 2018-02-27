package com.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.service.InsertServiceImpl;
import com.vo.Clazz;
import com.vo.Student;
import com.vo.User;

@Controller
@RequestMapping(value="/user")
public class UserInsertController {
	
	@Autowired
	@Qualifier("insertServiceImpl")
	private InsertServiceImpl insertServiceImpl;
	
	@RequestMapping(value="/insert")
	public String insert(@RequestParam("name")String name,@RequestParam("sex")String sex,
			@RequestParam("age")String age,Model model){
		User user=new User();
		user.setName(name);
		user.setSex(sex);
		user.setAge(Integer.parseInt(age));
		insertServiceImpl.save(user);
		return "success";

	}
	@RequestMapping(value="/select")
	@ResponseBody
	public Object SelectUser(){
		System.out.println("11");
		List<User> list=insertServiceImpl.findAll();
		return list;

	}

}
