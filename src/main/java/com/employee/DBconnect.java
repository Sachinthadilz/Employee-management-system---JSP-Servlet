package com.employee;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/ems";
	private static String username = "root";
	private static String password = "dilz@30";
	private static Connection con;
	
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
		}
		catch(Exception e){
			System.out.println("Database connection failed!");
		}
		
		return con;
	}
}
