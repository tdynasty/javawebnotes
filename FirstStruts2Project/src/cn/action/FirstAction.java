package cn.action;
//ҵ���߼�������
public class FirstAction {
	private String message;
	public String getMessage() {
		return "Tom";
	}
	public void setMessage(String message) {
		this.message = message;
	}
	//����һ���������� ���뷵��String����
	public String mymethod(){
		return "OK";
	}
	public String execute(){
		return "success";
	}
}
