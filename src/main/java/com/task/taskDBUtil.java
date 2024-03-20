package com.task;

import java.util.ArrayList;


import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class taskDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//create a task
	public static boolean insertTask(String task,String name,String email,String phone) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Insert into task values(0,'"+task+"','"+name+"','"+email+"','"+phone+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	//read function
	
	public  List<taskDetails> gettaskDetails(){
		
		ArrayList<taskDetails> req = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from task ";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int taskID= rs.getInt(1);
				String task = rs.getString(2);
				String name = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				
				taskDetails tsk = new taskDetails(taskID,task,name,email,phone);
				req.add(tsk);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return req;
	}
	
	//update request
		public static boolean UpdateRequest(String taskID ,String task,String name, String email, String phone) {
			
			int ID = Integer.parseInt(taskID);
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "update task set task='"+task+"'"+ "where taskID = '"+ID+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess=true;
				}else {
					isSuccess=false;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return isSuccess;
		}
		
		public static boolean Deletetask(String taskID)
		{
			
			int tID = Integer.parseInt(taskID);
			
			
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "delete from task where taskID = '"+tID+"'";
				int rs = stmt.executeUpdate(sql);		
				
				if(rs > 0)
				{
					isSuccess = true;
				}else
				{
					isSuccess = false;
				}		
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}	
			return isSuccess;
		}


}
