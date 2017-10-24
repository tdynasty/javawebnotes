package cn.action;
//业务逻辑控制器
public class FirstAction {
	private String message;
	public String getMessage() {
		return "Tom";
	}
	public void setMessage(String message) {
		this.message = message;
	}
	//定义一个公开方法 必须返回String类型
	public String mymethod(){
		return "OK";
	}
	public String execute(){
		return "success";
	}
}
