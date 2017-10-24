package pojo;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginPojo extends ActionSupport {
//���η�װLoginBean
	private LoginBean lg;

	public LoginBean getLg() {
		return lg;
	}

	public void setLg(LoginBean lg) {
		this.lg = lg;
	}
	public String execute() throws Exception{
		//��ȡMap���͵�session�ĻỰ����
		ActionContext ac=ActionContext.getContext();
		Map<String,Object> session=ac.getSession();
		Map<String,Object> application=ac.getApplication();
		
		if(lg.getUname().equals("QQ") && lg.getUpwd().equals("123")){
			session.put("uname", lg.getUname());
			session.put("uwpd", lg.getUpwd());
			application.put("color", "red");
			return SUCCESS;
			
		}else{
			//��̬���� ����ת������ �ض�����
			HttpServletRequest request=ServletActionContext.getRequest();
			request.setAttribute("error", "������˺Ż�������");
			return INPUT;
			
		}
		
	}
}
