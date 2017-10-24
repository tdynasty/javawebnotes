package interceptor;

import cn.action.MessageAction;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MessageInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		//过滤字符
		
		//获得Action的实例
		MessageAction ma=(MessageAction) ai.getAction();
		
		String content=ma.getContent();
		if(content.contains("屹勃")){
			String c=content.replaceAll("屹勃", "**");
			ma.setContent(c);
		}
		
		//过滤用户
		
		
		
		return ai.invoke();
	}

}
