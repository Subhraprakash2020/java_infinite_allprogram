<%@page import="com.java.agent.AgentDaoImpl"%>
<%@page import="com.java.agent.AgentDAO"%>
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
    int agentid = Integer.parseInt(request.getParameter("agentid"));
    AgentDAO dao = new AgentDaoImpl();
    dao.deleteAgentDao(agentid);
    %>
    <jsp:forward page = "AgentShow.jsp"/>
    <%
  %>

</body>
</html>