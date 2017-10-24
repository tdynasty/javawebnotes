package cn.session;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

public class IocSession extends ActionSupport implements ServletRequestAware,SessionAware,ServletContextAware,ServletResponseAware{

	//Ioc中的request
	private HttpServletRequest request;
	private HttpSession session;
	private Map<String,Object> sesmap;
	private ServletContext servletContext;
	private HttpServletResponse response;
	@Override
	public void setServletRequest(HttpServletRequest request) {//方法里的request参数
		//把方法里的参数注入到类中的属性里
		this.request=request;
		session=request.getSession();
		//第一种方法：从session中得到ServletContext
		//ServletContext servletContext=session.getServletContext();
		
		
	}
	@Override
	public void setSession(Map<String, Object> sesmap) {
		this.sesmap=sesmap;
		
	}
	@Override
	public void setServletContext(ServletContext servletContext) {
		
		//第二种方法：利用接口获得ServletContext方法，然后注入到类中的属性中
		this.servletContext=servletContext;
		
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		
		this.response=response;
		
	}
	public String execute()throws Exception{
		session.setAttribute("uname", "张三1");
		sesmap.put("sname", "张三2");
		session.setAttribute("mname", "王五");
		sesmap.put("yname", "李四");
		return SUCCESS;
		
	}

	
}
