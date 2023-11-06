<%@page import="com.java.agent.Gender"%>
<%@page import="com.java.agent.AgentDAO"%>
<%@page import="com.java.agent.AgentDaoImpl"%>
<%@page import="com.java.agent.Agent"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Agent</title>
</head>
<body>
	<form method="get" action="AddAgent.jsp">
		Agent Name: <input type="text" name="name" /><br /> <br /> City: <input
			type="text" name="city" /><br /> <br /> Gender: <select
			name="gender">
			<option value="MALE">Male</option>
			<option value="FEMALE">Female</option>
		</select><br /> <br /> Marital Status: <select name="mstatus">
			<option value="0">0</option>
			<option value="1">1</option>
		</select><br /> <br /> Premium: <input type="number" name="premium" /><br />
		<br /> <input type="submit" value="Add Agent" />
	</form>

	<%
	if (request.getParameter("name") != null && request.getParameter("premium") != null) {
		AgentDAO dao = new AgentDaoImpl();
		Agent agent = new Agent();
		agent.setName(request.getParameter("name"));
		agent.setCity(request.getParameter("city"));
		agent.setGender(Gender.valueOf(request.getParameter("gender")));
		agent.setMaritalStatus(Integer.parseInt(request.getParameter("mstatus")));
		agent.setPremium(Double.parseDouble(request.getParameter("premium")));
		dao.createAgentDao(agent);
	%>
	<jsp:forward page="AgentShow.jsp" />
	<%
	}
	%>
</body>
</html>
