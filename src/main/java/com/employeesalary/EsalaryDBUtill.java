package com.employeesalary;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EsalaryDBUtill {



	public static boolean insertEsalary(String Salary,String ename,String email){

		boolean isSuccess=false;

		String url = "jdbc:mysql://localhost:3306/ems";
		String user = "root";
		String password = "dilz@30";

		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con =DriverManager.getConnection(url, user, password) ;
			Statement stmt =con.createStatement();
			String sql="insert into empsal values (0,'"+Salary+"','"+ename+"','"+email+"')";
			int rs=stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}

		}

		catch(Exception e) {
			e.printStackTrace();
		}


		return isSuccess;
	}









	public static List<EmployeeSal>getallSalInfo(){

		ArrayList<EmployeeSal>empsal=new ArrayList<>();

		String url = "jdbc:mysql://localhost:3306/ems";
		String user = "root";
		String password = "dilz@30";

		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con =DriverManager.getConnection(url, user, password) ;
			Statement stmt =con.createStatement();

			String sql = "select * from empsal";
			ResultSet rs = stmt.executeQuery(sql);

			while(rs.next()) {
				int salid = rs.getInt(1);
				String salamount = rs.getString(2);
				String ename = rs.getString(3);
				String email = rs.getString(4);

				EmployeeSal es = new EmployeeSal(salid, salamount,ename,email);
				empsal.add(es);
			}

		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return empsal;

	}





	public static boolean updatesalary(int salId, String salAmount,String name,String email) {

		boolean issuccess = false;

		String url = "jdbc:mysql://localhost:3306/ems";
		String user = "root";
		String password = "dilz@30";

		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con =DriverManager.getConnection(url, user, password) ;
			Statement stmt =con.createStatement();
			
			String sql = "update empsal set salAmount='"+salAmount+"' where salId='"+salId+"' ";                                                           
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				issuccess=true;
			}else {
				issuccess=false;
			}
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}




		return issuccess;

	}
	
	
	
	
	
	
	
	public static boolean deletesalary(int salId) {
		
		boolean issuccess = false;

		String url = "jdbc:mysql://localhost:3306/ems";
		String user = "root";
		String password = "dilz@30";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");

			Connection con =DriverManager.getConnection(url, user, password) ;
			Statement stmt =con.createStatement();
			String sql = "delete from empsal where salId = '"+salId+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
 				issuccess=true;
			}
			else {
				issuccess=false;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return issuccess;
		
	}

























}
