<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="beenGreeting" class = "com.java.been.Greeting">
  Default Greeting:
  <b>
  <jsp:getProperty property="message" name="beenGreeting"/>
  </b>
  <jsp:setProperty property="message" name = "beenGreeting" value = "Good Afternoon"/>
  <br>
  Updated Value:
  <jsp:getProperty property = "message" name = "beenGreeting"/>
</jsp:useBean>
</body>
</html>