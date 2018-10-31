package com.marlabs.beans;

public class EmployeeBean {
	private int empId;
	private String empName;
	private double empSal;
	private int empDept;

	/**
	 * @return the empId
	 */
	public int getEmpId() {
		return empId;
	}

	/**
	 * @return the empName
	 */
	public String getEmpName() {
		return empName;
	}

	/**
	 * @return the empSal
	 */
	public double getEmpSal() {
		return empSal;
	}

	/**
	 * @return the empDept
	 */
	public int getEmpDept() {
		return empDept;
	}

	/**
	 * @param empId
	 *            the empId to set
	 */
	public void setEmpId(int empId) {
		this.empId = empId;
	}

	/**
	 * @param empName
	 *            the empName to set
	 */
	public void setEmpName(String empName) {
		this.empName = empName;
	}

	/**
	 * @param empSal
	 *            the empSal to set
	 */
	public void setEmpSal(double empSal) {
		this.empSal = empSal;
	}

	/**
	 * @param empDept
	 *            the empDept to set
	 */
	public void setEmpDept(int empDept) {
		this.empDept = empDept;
	}

}
