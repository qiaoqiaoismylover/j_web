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
	
	Cookie  cookie1= new Cookie("uname",request.getParameter("uname"));
	Cookie  cookie2= new Cookie("upwd",request.getParameter("upwd"));
	cookie1.setMaxAge(10);
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.sendRedirect("result.jsp");
	%>
</body>
</html>