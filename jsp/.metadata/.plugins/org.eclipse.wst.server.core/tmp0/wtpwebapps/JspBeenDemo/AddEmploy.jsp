<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="AddEmploy.jsp" style = "text-align:center">
	
		Employ No : 
		<input type="number" name="empno" /> <br/><br/>
		Employ Name : 
		<input type="text" name="name" /> <br/><br/>
		Gender : 
		<select name="gender">
			<option value="MALE">Male</option>
			<option value="FEMALE">Female</option>
		</select> <br/><br/>
		Department : 
		<select name="dept">
			<option value="Java">Java</option>
			<option value="Dotnet">Dotnet</option>
			<option value="Oracle">Oracle</option>
		</select> <br/><br/>
		Designation : 
		<select name="desig">
			<option value="Programmer">Programmer</option>
			<option value="TeamLead">TeamLead</option>
			<option value="Manager">Manager</option>
		</select> <br/><br/>
		Basic : 
		<input type="number" name="basic" />
		<br/><br/>
		<input type="submit" value="Add Employ" />
	
</form>
<%
	if (request.getParameter("empno")!=null && 
			request.getParameter("basic")!=null
			) {
%>
	<jsp:useBean id="employ" class="com.java.been.Employ"/>
	<jsp:setProperty property="*" name="employ"/>
	<jsp:useBean id="dao" class="com.java.been.EmployDAOImpl"/>
	<%=dao.addEmployDao(employ) %>
<%
	}
%>
</body>
</html>