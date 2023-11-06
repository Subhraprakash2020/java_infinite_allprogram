<%@page import="com.java.jsp.Employ"%>
<%@page import="com.java.jsp.EmployDAOImpl"%>
<%@page import="com.java.jsp.EmployDAO"%>
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
  Employ No:
  <input type = "number" name = "empno" readonly="readonly">
  
 </center>
</form>
</body>
</html>