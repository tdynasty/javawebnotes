package interceptor;

import cn.action.MessageAction;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MessageInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		//�����ַ�
		
		//���Action��ʵ��
		MessageAction ma=(MessageAction) ai.getAction();
		
		String content=ma.getContent();
		if(content.contains("�ٲ�")){
			String c=content.replaceAll("�ٲ�", "**");
			ma.setContent(c);
		}
		
		//�����û�
		
		
		
		return ai.invoke();
	}

}
