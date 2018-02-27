

package com.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.vo.Gift;
import com.vo.Student;
import com.vo.User;

@Controller
@RequestMapping(value="/child")
public class ChildController {
	
	private String username;
	
	@RequestMapping(value="hello")
	@ResponseBody
	public Object lo( String  username,String password,String td){
		String str="你好";
		Map<Object,Object> map=new HashMap<Object,Object>();
		map.put("name", "张三");
		map.put("id",2);
		List<Student> list=new ArrayList<Student>();
		List<Student> list1=new ArrayList<Student>();
		Student stu1=new Student();
		stu1.setName("李四");
		stu1.setId(11);
		Student stu2=new Student();
		stu2.setName("王五");
		stu2.setId(12);
		Student stu3=new Student();
		stu3.setName("李留");
		stu3.setId(131);
		list.add(stu1);
		list.add(stu2);
		list.add(stu3);
		list1.add(stu1);
		list1.add(stu2);
		JSONObject json=new JSONObject();
		json.put("ss", "你好");
		json.put("sss","再次你好");
		map.put("list", list);
		map.put("list1", list);
		return map;
	}
	
	@RequestMapping(value="login")
	public void tt(String username,String password){
		System.out.println("111"+username);
		System.out.println("111222"+password);
	}
	
	@RequestMapping(value="/gift")
	@ResponseBody
	public List<Gift> getList(/*String username,String td*/){
		Gift gift1=new Gift();
		Gift gift2=new Gift();
		Gift gift3=new Gift();
		gift1.setId("1");
		gift1.setName("你好");
		gift1.setComment("1");
		gift1.setGrade("1");
		gift1.setRange("1");
		gift1.setGrades("1");
		gift2.setId("2");
		gift2.setName("2");
		gift2.setComment("2");
		gift2.setGrade("2");
		gift2.setRange("2");
		gift2.setGrades("2");
		gift3.setId("3");
		gift3.setName("3");
		gift3.setComment("3");
		gift3.setGrade("3");
		gift3.setRange("3");
		gift3.setGrades("3");
		List<Gift> list =new ArrayList<Gift>();
		list.add(gift1);
		list.add(gift2);
		list.add(gift3);
		return list;
	}
	
	@RequestMapping(value="/box")
	@ResponseBody
	public Object getBox(String name){
		Map<Object,Object> map=new HashMap<Object,Object>();
		String code="000";
		String msg="成功";
		map.put("code", code);
		map.put("msg", msg);
		return map;

	}
	@RequestMapping(value="/modal")
	@ResponseBody
	public Object getModal(String name,String url){
		Map<Object,Object> map=new HashMap<Object,Object>();
		String code="000";
		String msg="成功";
		map.put("code", code);
		map.put("msg", msg);
		
		return map;

	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}
