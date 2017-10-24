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

	//Ioc�е�request
	private HttpServletRequest request;
	private HttpSession session;
	private Map<String,Object> sesmap;
	private ServletContext servletContext;
	private HttpServletResponse response;
	@Override
	public void setServletRequest(HttpServletRequest request) {//�������request����
		//�ѷ�����Ĳ���ע�뵽���е�������
		this.request=request;
		session=request.getSession();
		//��һ�ַ�������session�еõ�ServletContext
		//ServletContext servletContext=session.getServletContext();
		
		
	}
	@Override
	public void setSession(Map<String, Object> sesmap) {
		this.sesmap=sesmap;
		
	}
	@Override
	public void setServletContext(ServletContext servletContext) {
		
		//�ڶ��ַ��������ýӿڻ��ServletContext������Ȼ��ע�뵽���е�������
		this.servletContext=servletContext;
		
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		
		this.response=response;
		
	}
	public String execute()throws Exception{
		session.setAttribute("uname", "����1");
		sesmap.put("sname", "����2");
		session.setAttribute("mname", "����");
		sesmap.put("yname", "����");
		return SUCCESS;
		
	}

	
}
