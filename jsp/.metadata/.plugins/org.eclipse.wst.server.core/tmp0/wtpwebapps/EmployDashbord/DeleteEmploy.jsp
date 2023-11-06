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
    dao.deleteEmployDao(empno);
    %>
    <jsp:forward page = "EmployShow.jsp"/>
    <%
  %>
</body>
</html>