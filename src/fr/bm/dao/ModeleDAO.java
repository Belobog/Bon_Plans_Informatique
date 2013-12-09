package fr.bm.dao;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.sql.DataSource;

import org.apache.struts2.ServletActionContext;

public class ModeleDAO implements DAO{
	
	DataSource dataSource = null;

	@Override
	public Connection getConnection() {
		
		ServletContext servletContext = ServletActionContext.getServletContext();
		if(this.dataSource==null){
			dataSource = (DataSource) servletContext.getAttribute("dataSource");
		}
		
		Connection connection = null;
		
		if(dataSource != null){
			
			try {
				connection = dataSource.getConnection();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
		}
		
		return connection;
	}
	
	public void setConnection(DataSource dataSource){
		this.dataSource = dataSource;
	}

}
