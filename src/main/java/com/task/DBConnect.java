package com.task;

import java.sql.Connection;

import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/ems";
	private static String uname = "root";
	private static String pass = "dilz@30";
	private static Connection con ;
	
	
public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,uname,pass);
			
		}catch(Exception e) {
			
			System.out.println("Database Connection is not successful");
		}
		
		return con;
		
	}


}
