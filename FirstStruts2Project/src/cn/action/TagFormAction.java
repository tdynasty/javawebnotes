package cn.action;

import com.opensymphony.xwork2.ActionSupport;

public class TagFormAction extends ActionSupport {
	//·â×°Êý¾Ý
	private String uname;
	private String content;
	private String upwd;
	private String gender1;
	private String gender2;
	private String fruit1;
	private String fruit2;
	private String fruit3;
	private String apple;
	private String addres;
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getGender1() {
		return gender1;
	}
	public void setGender1(String gender1) {
		this.gender1 = gender1;
	}
	public String getGender2() {
		return gender2;
	}
	public void setGender2(String gender2) {
		this.gender2 = gender2;
	}
	public String getFruit1() {
		return fruit1;
	}
	public void setFruit1(String fruit1) {
		this.fruit1 = fruit1;
	}
	public String getFruit2() {
		return fruit2;
	}
	public void setFruit2(String fruit2) {
		this.fruit2 = fruit2;
	}
	public String getFruit3() {
		return fruit3;
	}
	public void setFruit3(String fruit3) {
		this.fruit3 = fruit3;
	}
	public String getApple() {
		return apple;
	}
	public void setApple(String apple) {
		this.apple = apple;
	}
	public String getAddres() {
		return addres;
	}
	public void setAddres(String addres) {
		this.addres = addres;
	}
	//
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}

}
