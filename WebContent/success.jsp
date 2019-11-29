<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>简单猜数字游戏</title>
</head>
<body>
  	<%int count=((Integer)session.getAttribute("count")).intValue();
     int num=((Integer)session.getAttribute("save")).intValue();
     %>
     <P>猜对了！</P>
     <P>共猜了:<%=count%>次</P> 
     <P>这个数字是:<%=num%></P>
     <p>点击继续，可继续猜数字游戏。</p>
     <form action="index.jsp">
     <input type="submit" value="继续">
     </form>

</body>
</html>