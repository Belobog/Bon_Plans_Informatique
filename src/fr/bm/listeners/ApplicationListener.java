package fr.bm.listeners;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;

public class ApplicationListener implements ServletContextListener{
	
	Context context = null;

	@Override
	public void contextDestroyed(ServletContextEvent servletContextEvent) {
		
		if(context != null){
			try {
				context.close();
			} catch (NamingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

	@Override
	public void contextInitialized(ServletContextEvent servletContextEvent) {
		ServletContext servletContext = servletContextEvent.getServletContext();
		String dataSourceJNDI = servletContext.getInitParameter("dataSourceJNDI");
		
		try {
			context = new InitialContext();
			DataSource dataSource = (DataSource) context.lookup(dataSourceJNDI);
			
			if(dataSource==null){
				System.out.println("Pas de data source pour ce projet");
			}
			else{
				System.out.println("Data source chargée");
			}
			servletContext.setAttribute("dataSource", dataSource);
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally{
			if(context!=null){
				try {
					context.close();
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
	}

}
