package fr.bm.interceptors;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;



public class AllowAccessInterceptor extends AbstractInterceptor {

	@Override
	public void init(){
		System.out.println("dans la méthode init.......");
	}
	
	public String intercept(ActionInvocation arg0) throws Exception {
		System.out.println("dans la méthode intercept.......");
		
		System.out.println("GetAction vaut : "+arg0.getAction());
		System.out.println("toString vaut : "+arg0.toString());
		
		
		
		
		
		Map<String, Object> session = arg0.getInvocationContext().getSession();
		System.out.println("allowAccess vaut "+session.get("allowAccess"));
		System.out.println("role vaut "+session.get("role"));
		
		
		if(session.get("allowAccess")==null)
		{
			return "allowAccess";
		}else
			{
				if (!session.isEmpty())
				{
					return arg0.invoke();
				}
				else
				{
					return "allowAccess";
				}
			}
	}

}
