<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<% 
String name = request.getParameter("name");
int rollno = Integer.parseInt(request.getParameter("rollno"));
String email = request.getParameter("email");
String currentCenter = request.getParameter("currentCenter");
String desiredCenter = request.getParameter("desiredCenter");
String reason = request.getParameter("reason");
%>
Dear 
<%=name%>, your Centre has been changed from <%=currentCenter%> to <%=desiredCenter%>
</body>
</html>
