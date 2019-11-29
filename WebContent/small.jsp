<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>简单猜数字游戏</title>
</head>
<body>
 
   
    <P>所猜的数小了，请再猜:</P>
    <FORM action="result.jsp"method="post"name=form>
       <INPUT type="text"name="guess_num">
       <INPUT type="submit"value="提交"name="submit">
    </FORM>
</body>
</html>