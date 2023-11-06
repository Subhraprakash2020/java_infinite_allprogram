<%@page import="com.java.agent.Gender"%>
<%@page import="com.java.agent.Agent"%>
<%@page import="com.java.agent.AgentDAO"%>
<%@page import="com.java.agent.AgentDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Agent</title>
</head>
<body>
	<%
	int agentid = Integer.parseInt(request.getParameter("agentid"));
	AgentDAO dao = new AgentDaoImpl();
	Agent agent = dao.searchAgentDao(agentid);
	%>
	<form method="post" action="updateAgent.jsp">
		Agent No : <input type="number" name="agentid" readonly="readonly"
			value="<%=agent.getAgentId()%>" /> <br />
		<br /> Agent Name : <input type="text" name="name"
			value="<%=agent.getName()%>" /> <br />
		<br /> City : <input type="text" name="city"
			value="<%=agent.getCity()%>" /> <br />
		<br /> Gender : <input type="text" name="gender"
			value="<%=agent.getGender()%>" /> <br />
		<br /> Marital Status : <input type="text" name="mstatus"
			value="<%=agent.getMaritalStatus()%>" /> <br />
		<br /> Premium : <input type="number" name="premium"
			value="<%=agent.getPremium()%>" /> <br />
		<br /> <input type="submit" value="Update Agent" />
	</form>
	<%
	if (request.getParameter("agentid") != null && request.getParameter("premium") != null) {
		Agent agentUpdated = new Agent();
		agentUpdated.setAgentId(Integer.parseInt(request.getParameter("agentid")));
		agentUpdated.setName(request.getParameter("name"));
		agentUpdated.setCity(request.getParameter("city"));
		agentUpdated.setGender(Gender.valueOf(request.getParameter("gender").toUpperCase()));
		agentUpdated.setMaritalStatus(Integer.parseInt(request.getParameter("mstatus")));
		agentUpdated.setPremium(Double.parseDouble(request.getParameter("premium")));
		dao.updateAgentDao(agentUpdated);
		response.sendRedirect("AgentShow.jsp");
	}
	%>
</body>
</html>
