<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method = "get" action="Calculation.jsp">
     <center>
       First No:
       <input type = "number" name = "firstNo"><br><br>
       Second No:
       <Input type = "number" name  = "secondNo"><br><br>
       <input type = "submit" value = "Calculation">
     </center>
  
  </form>
  <%
       if(request.getParameter("firstNo") != null && request.getParameter("secondNo") != null){
    	   int firstNo, secondNo, result;
    	   firstNo = Integer.parseInt(request.getParameter("firstNo"));
    	   secondNo = Integer.parseInt(request.getParameter("secondNo"));
    	   result = firstNo + secondNo;
    	   out.println("Sum is" + result +"<br>");
       }
   %>
  
</body>
</html>