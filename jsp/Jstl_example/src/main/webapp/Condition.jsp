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
  <c:set var = "n" value = "12"/>
   <c:if test="${n<0 }">
    <c:out value="Nagative number"/>
   </c:if>
   <c:if test = "${n>=0 }">
     <c:out value = "Positive Number"/>
   </c:if>
 
</body>
</html>