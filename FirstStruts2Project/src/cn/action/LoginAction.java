package cn.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	
	//封装表单对应信息，必须和表单中的属性name的值相同
	private String uname;
	private String upwd;
	

	public String getUname() {
		return uname;
	}


	public void setUname(String uname) {
		this.uname = uname;
	}


	public String getUpwd() {
		return upwd;
	}


	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}


	@Override
	public String execute() throws Exception {
		//struts框架底层自动给表单的数据传进来,只要提供了get和set方法就行
		if(uname.equals("QQ") && upwd.equals("123")){
			
			return SUCCESS;
			
		}else{
			
			return INPUT;
			
		}
		
	}
	public String hello(){
		return "您好";
	}
	
	

}
