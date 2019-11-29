<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>简单猜数字游戏</title>
</head>
<body>
 
    <P>所猜的数大了，请再猜:</P>
 <form action="result.jsp"method="get"name=form>
       <INPUT type="text"name="guess_num">
       <INPUT type="submit"value="提交"name="submit">
   </form>

</body>
</html>