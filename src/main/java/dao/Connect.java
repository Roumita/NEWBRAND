package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect {
	
	public static Connection getConnection() {
		 String url="jdbc:mysql://localhost/";
		 String dbName="BRANDNEW";
		 String user="root";
		 String password="";
		 
		Connection connect = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			connect = DriverManager.getConnection(url+dbName,user,password);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			System.out.println("connexion ko");
		}
		
		
		return connect;
		
	}
}