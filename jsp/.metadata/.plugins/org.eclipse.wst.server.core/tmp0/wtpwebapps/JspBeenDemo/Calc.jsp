<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method="get" action = "Calc.jsp" style = "text-align:center">
   
     First Number:
     <input type = "number" name = "firstNo"/><br><br>
     Second Number:
     <input type = "number" name = "secondNo"/><br><br>
     <input type = "submit" value = "Calculation">
  
  </form>
  <%
    if(request.getParameter("firstNo")!=null && request.getParameter("secondNo") != null){
    	%>
    	<jsp:useBean id = "beenCalc" class = "com.java.been.Calculation"/>
    	<jsp:setProperty property="*" name = "beenCalc"/>
    	Sum is :<b><%=beenCalc.sum() %></b><br><br>
    	Sub is :<b><%=beenCalc.sub() %></b><br><br>
    	Mult is :<b><%=beenCalc.mult() %></b><br><br>
    	<%
    }
  %>
</body>
</html>