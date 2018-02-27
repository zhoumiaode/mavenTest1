package com.vo;

import java.util.List;

public class User {
	private Integer id;
	private String name;
	private String sex;
	private Integer age;
	private String username;
	private String password;
	public User(){
		super();
	}
	public User(String name,String sex,Integer age){
	
		this.name=name;
		this.sex=sex;
		this.age=age;
	}
	public User(Integer id,String name,String sex,Integer age){
		this.id=id;
		this.name=name;
		this.sex=sex;
		this.age=age;
	}
	public User(String name,Integer age){
		
		this.name=name;
		this.age=age;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
