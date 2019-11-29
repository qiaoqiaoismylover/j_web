<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon"  href="dog.ico" type="image/x-icon" />
<meta charset="UTF-8">
<title>简单猜数字游戏</title>
<script type="text/javascript">
            function myCheck()
            {
               for(var i=0;i<document.form_post.elements.length-1;i++)
               {
                  if(document.form_post.elements[i].value=="")
                  {
                     alert("当前表单不能有空项");
                     document.form_post.elements[i].focus();
                     return false;
                  }
               }
               return true;
            }
        </script>
</head>
<body>
<%--产生随机数 --%>
<%! int num;%>
	<% 
	Random a = new Random();
	num=(a.nextInt(101));
	session.setAttribute("count",new Integer(0));//猜数次数
    session.setAttribute("save",new Integer(num));//存储正确的数
    
	%>
	<h1>产生的随机数:<%=num %></h1>
<%--提交结果 --%>
	<form name="form_post" action="result.jsp" method="post" onsubmit="return myCheck()">
	<input type="text"  name="guess_num" onkeyup="if(isNaN(value))execCommand('undo')" >
	<input type="submit" value="提交">
	</form>
</body>
</html>