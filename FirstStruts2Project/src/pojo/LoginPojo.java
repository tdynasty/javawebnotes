package pojo;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginPojo extends ActionSupport {
//二次封装LoginBean
	private LoginBean lg;

	public LoginBean getLg() {
		return lg;
	}

	public void setLg(LoginBean lg) {
		this.lg = lg;
	}
	public String execute() throws Exception{
		//获取Map类型的session的会话对象
		ActionContext ac=ActionContext.getContext();
		Map<String,Object> session=ac.getSession();
		Map<String,Object> application=ac.getApplication();
		
		if(lg.getUname().equals("QQ") && lg.getUpwd().equals("123")){
			session.put("uname", lg.getUname());
			session.put("uwpd", lg.getUpwd());
			application.put("color", "red");
			return SUCCESS;
			
		}else{
			//暂态数据 请求转发才行 重定向不行
			HttpServletRequest request=ServletActionContext.getRequest();
			request.setAttribute("error", "错误的账号或者密码");
			return INPUT;
			
		}
		
	}
}
