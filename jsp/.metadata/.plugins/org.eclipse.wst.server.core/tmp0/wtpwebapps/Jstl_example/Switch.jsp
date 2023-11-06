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

  <c:set var = "x" value = "3">
   <c:choose>
      <c:when test = "${x==1 }">
        <c:out value = Subhraprakash"/>
      </c:when>
      <c:when test = "${x==2 }">
        <c:out value = Shritish"/>
      </c:when>
      <c:when test = "${x==3 }">
        <c:out value = Shivanig"/>
      </c:when>
      <c:otherwise>
       <c:out value = "Sonali"/>
      </c:otherwise>
   </c:choose>
  </c:set>
   
  
</body>
</html>