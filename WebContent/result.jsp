<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>简单猜数字游戏</title>
</head>
<body>
	<%
		String str1 = request.getParameter("guess_num");
		int guessnumber = Integer.parseInt(str1);
		Integer save_num = (Integer) session.getAttribute("save");
		int realnumber = save_num.intValue();

		if (guessnumber == realnumber) {
			int n = ((Integer) session.getAttribute("count")).intValue();
			n = n + 1;
			session.setAttribute("count", new Integer(n));
			response.sendRedirect("success.jsp");
		} else if (guessnumber > realnumber) {
			int n = ((Integer) session.getAttribute("count")).intValue();
			n = n + 1;
			session.setAttribute("count", new Integer(n));
			response.sendRedirect("large.jsp");
		} else if (guessnumber < realnumber) {
			int n = ((Integer) session.getAttribute("count")).intValue();
			n = n + 1;
			session.setAttribute("count", new Integer(n));
			response.sendRedirect("small.jsp");
		}
	%>
</body>
</html>