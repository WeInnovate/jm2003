<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Processing Login Data</title>
</head>
<body>
	<%
		String un = request.getParameter("username");
		String p = request.getParameter("pass");

		if (!un.equals(p)) {
			/* out.print("You are a valid user"); */
			response.sendRedirect("login.jsp");

		}
	%>

	<jsp:forward page="profile.jsp">
		<jsp:param value="${param.username}" name="userName" />
		<jsp:param value="Atul" name="trainerName"/>
	</jsp:forward>

</body>
</html>