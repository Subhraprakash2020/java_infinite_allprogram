<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method = "get" action = "CaseDemo.jsp">
    Enter your choice:
    <input type = "number" name = "sno"/><br>
    <input type = "submit" value = "Show"/>
  
  </form>
  
  <c:if test = "${param.sno != null }"/>
   <c:set var ="sno" value = "${param.sno }"/>
   <c:choose>
     <c:when test = "${sno == 1 }">
       <c:out value="Unmesha"/>
     </c:when>
      <c:when test = "${sno == 2 }">
       <c:out value="Ayush"/>
     </c:when>
     <c:otherwise>
       <c:out value="Invalid"/>
      </c:otherwise>
     
   </c:choose>
  
 
</body>
</html>