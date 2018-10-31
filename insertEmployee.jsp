<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException" %>
<%@page import="com.mysql.cj.jdbc.Driver"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%! 
	Connection connection = null; 
	PreparedStatement preparedStatement = null;
	
	public void jspInit(){
		System.out.println("In jspInit");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/firstdatabase", "root", "");
			System.out.println("DB Connected");
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	final String INSERT_QUERY = "INSERT INTO employee VALUES( ?, ?, ?, ?)" ; 
	

	
%>
	<%
	
	preparedStatement = connection.prepareStatement(INSERT_QUERY);
	int empId = Integer.parseInt(request.getParameter("empId"));
	String empName = request.getParameter("empName");
	double empSal = Double.parseDouble(request.getParameter("empSal"));
	int empDept = Integer.parseInt(request.getParameter("empDept"));
	//System.out.println("Prepared Statement: "+preparedStatement.toString());
	//System.out.println("after Request Parameter");
	preparedStatement.setInt(1, empId);
	preparedStatement.setString(2, empName);
	preparedStatement.setDouble(3, empSal);
	preparedStatement.setInt(4, empDept);
	//System.out.println("after Setting Prepared Statement");
	
	int updateResult = preparedStatement.executeUpdate();
	//System.out.println("after Setting Prepared Statement");
	
	if(updateResult > 0){
	
	%>
	<h2>
		<font color="Green">Data Inserted</font>
	</h2>
	
	<%
	}else{
	%>
	<h2>
		<font color="Red"> Data not been inserted
		</font>		
	</h2>
	
	<%
	}
	%>
	
	
</body>
</html>