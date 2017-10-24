package cn.action;

import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport {
	private String content;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String execute() throws Exception {
		
		return SUCCESS;
	}
	

}
