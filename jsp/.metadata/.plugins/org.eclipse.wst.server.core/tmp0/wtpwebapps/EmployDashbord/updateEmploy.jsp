<%@page import="com.java.dashboard.Gender"%>
<%@page import="com.java.dashboard.Employ"%>
<%@page import="com.java.dashboard.EmployDAOImpl"%>
<%@page import="com.java.dashboard.EmployDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  int empno = Integer.parseInt(request.getParameter("empno"));
  EmployDAO dao = new EmployDAOImpl();
  Employ employ = dao.searchEmployDao(empno);
  
%>
<form method = "get" action = "updateEmploy.jsp">
<center>
	Employ No : 
		<input type="number" name="empno" readonly="readonly" 
			value=<%=employ.getEmpno() %> /> <br/><br/>
	Employ Name : 
		<input type="text" name="name" 
			value=<%=employ.getName() %> /> <br/><br/>
	Gender : 
	<input type="text" name="gender" 
		value=<%=employ.getGender() %> /> <br/><br/>
	Department : 
	<input type="text" name="dept" 
			value=<%=employ.getDept() %> /> <br/><br/> 
	Designation : 
	<input type="text" name="desig" 
			value=<%=employ.getDesig() %> /> <br/><br/>
	Basic : 
	<input type="number" name="basic" 
			value=<%=employ.getBasic() %> /> <br/><br/>
	<input type="submit" value="Update Employ" />
	</center>
</form>
<%
  if(request.getParameter("empno") != null && request.getParameter("basic") != null){
	  Employ employUpdated = new Employ();
	  employUpdated.setEmpno(Integer.parseInt(request.getParameter("empno")));
	  employUpdated.setName(request.getParameter("name"));
	  employUpdated.setGender(Gender.valueOf(request.getParameter("gender").toUpperCase()));
	  employUpdated.setDept(request.getParameter("dept"));
	  employUpdated.setDesig(request.getParameter("desig"));
	  employUpdated.setBasic(Double.parseDouble(request.getParameter("basic")));
	  dao.updateEmployDao(employUpdated);
	 %>
	 <jsp:forward page="EmployShow.jsp"/>
	 <%
  }
%>

</body>
</html>