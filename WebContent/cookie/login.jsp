<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!String uname ; 

String upwd;
%>

<% boolean flag =false;
Cookie [] cookies=request.getCookies();
for(Cookie cookie:cookies)
{
	if(cookie.getName().equals("uname")||cookie.getName().equals("upwd")){
		uname=cookie.getValue();
		upwd=cookie.getValue();
		flag =true;
	}
}
if(!flag){
	out.print("cookie已失效");
}
else{
	out.print("cookie:"+uname+":"+upwd);
	
}
%>

 <form action="check.jsp" method="post">
	
	用户名:<input type="text" name="uname" value="<%=(uname==null?"":uname) %>" ><br/>
	密码:<input type="password" name="upwd" value="<%=(upwd==null?"":upwd) %>"><br/>
		<input type="submit" value="登录"><br/>
	</form>
	
	
	
</body>
</html>