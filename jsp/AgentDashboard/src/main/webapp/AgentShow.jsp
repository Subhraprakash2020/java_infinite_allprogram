<%@page import="com.java.agent.Agent"%>
<%@page import="com.java.agent.AgentDaoImpl"%>
<%@page import="com.java.agent.AgentDAO"%>
<%@page import="java.util.List"%>
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
	AgentDAO dao = new AgentDaoImpl();
	List<Agent> agentList = dao.showAgentDao();
	%>

	<table border="3" align="center">
		<tr>
			<th>Agent ID</th>
			<th>Agent Name</th>
			<th>City</th>
			<th>Gender</th>
			<th>Maritial Status</th>
			<th>Premium</th>
			<th>Update</th>
			<th>Delete</th>

		</tr>
		<%
		for (Agent agent : agentList) {
		%>

		<tr>
			<td><%=agent.getAgentId()%></td>
			<td><%=agent.getName()%></td>
			<td><%=agent.getCity()%></td>
			<td><%=agent.getGender()%></td>
			<td><%=agent.getMaritalStatus()%></td>
			<td><%=agent.getPremium()%></td>
			<td><a href=updateAgent.jsp?agentid= <%=agent.getAgentId()%>>Update</a>
			</td>
			<td><a href=deleteAgent.jsp?agentid= <%=agent.getAgentId()%>>Delete</a>
			</td>
		</tr>
		<%
		}
		%>

	</table>
	<a href="AddAgent.jsp">Add Agent</a>

</body>
</html>