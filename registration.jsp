<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="empBean" class="com.marlabs.beans.EmployeeBean" scope="session" type="com.marlabs.beans.EmployeeBean"></jsp:useBean>
<jsp:setProperty property="*" name="empBean"/>

<jsp:useBean id="register" class="com.marlabs.beans.Registration" type="com.marlabs.beans.Registration" scope="session"></jsp:useBean>

<jsp:scriptlet>
	boolean registerResult = register.registerEmployee(empBean);
	if(registerResult){
</jsp:scriptlet>
	<h2>
		<font color="green">
			Employee <jsp:getProperty property="empName" name="empBean"/> has been reistered
		</font>
	</h2>
<jsp:scriptlet>
	}else{
</jsp:scriptlet>
	<h2>
		<font>
			Employee <jsp:getProperty property="empName" name="empBean"/> not Registered
		</font>
	</h2>
<jsp:scriptlet>}
</jsp:scriptlet>


</body>
</html>