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
		public boolean loginValidate(String userName, String userPass) {
		boolean loginFlag = false;
			if ("admin".equals(userName) && "password".equals(userPass)) {
				loginFlag = true;
			}
		return loginFlag;
	}%>
	<%
		String userName = request.getParameter("userName");
		String userPass = request.getParameter("userPass");
		boolean loginFlag = loginValidate(userName, userPass);
		if(loginFlag){
	%>
		<h2>
			<font color="Green">Welcome to Dashboard <%=userName %></font>
		</h2>
		<form method="post" action="./registration.jsp">
			<table border="1">
				<tr>
					<td>Employee Id:
					</td>
					<td><input type="number" name="empId" />
					</td>
				</tr>
				<tr>
					<td>Employee Name:
					</td>
					<td><input type="text" name="empName" />
					</td>
				</tr>
				<tr>
					<td>Employee Salary :
					</td>
					<td><input type="number" name="empSal" />
					</td>
				</tr>
				<tr>
					<td>Employee Dept:
					</td>
					<td><input type="text" name="empDept" />
					</td>
				</tr>
				<tr>
					<td><input type="reset" value="ReSet" />
					</td>
					<td><input type="submit" value="Submit" />
					</td>
				</tr>
			</table>
		</form>
	<%
		}else{
	%>
		<h2>
			<font color="Red"> Error in Login as <%=userName %>, <a href="./login.html">Try Again!</a>
			</font>
		</h2>
	<%
		}
	%>
</body>
</html>