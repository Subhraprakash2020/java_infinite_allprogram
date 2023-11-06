<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <jsp:useBean id="beenName" class = "com.java.been.NameBeen">
   <jsp:setProperty property = "*" name = "beenName"/>
   FirstName :<b>
   <jsp:getProperty property="firstName" name="beenName"/></b>
   <br>
   Last Name :<b>
   <jsp:getProperty property="lastName" name="beenName"/></b>
   <br>
   Full Name :<%=beenName.fullName() %>
  </jsp:useBean>
</body>
</html>