package com.employeesalary;

public class EmployeeSal {
	
	private int salId;
	private String salAmount;
	private String ename;
	private String email;

	public EmployeeSal(int salId, String salAmount, String ename, String email) {
		
		this.salId = salId;
		this.salAmount = salAmount;
		this.ename = ename;
		this.email = email;
	}


	public int getSalId() {
		return salId;
	}

	public String getSalAmount() {
		return salAmount;
	}
	
	public String getEname() {
		return ename;
	}


	public String getEmail() {
		return email;
	}
	

}
