package cn.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	
	//��װ����Ӧ��Ϣ������ͱ��е�����name��ֵ��ͬ
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
		//struts��ܵײ��Զ����������ݴ�����,ֻҪ�ṩ��get��set��������
		if(uname.equals("QQ") && upwd.equals("123")){
			
			return SUCCESS;
			
		}else{
			
			return INPUT;
			
		}
		
	}
	public String hello(){
		return "����";
	}
	
	

}
