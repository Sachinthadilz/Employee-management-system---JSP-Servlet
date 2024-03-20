package com.task;

public class taskDetails {
	
	int taskID;
	String task;
	String name;
	String email;
	String phone;
	
	
	

	public taskDetails(int taskID, String task, String name, String email, String phone) {
		
		this.taskID = taskID;
		this.task = task;
		this.name = name;
		this.email = email;
		this.phone = phone;
	}

	public int getTaskID() {
		return taskID;
	}

	public String gettask() {
		return task;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}
	
	
	
	

}
