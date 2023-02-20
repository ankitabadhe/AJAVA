<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Study center application</title>
</head>
<body>
<form action="App.jsp" method="get">
<h2>Personal Information</h2>
<p>
<label for="name">Name:</label><br />
<input type="text" name="name" id="name" required />
</p>
<p>
<label for="rollno">Roll No:</label><br />
<input type="text" name="rollno" id="rollno" required />
</p>
<p>
<label for="email">Email:</label><br />
<input type="email" name="email" id="email" required />
</p>
<p>
<label for="currentCenter">Current Study Center:</label><br />
<input type="text" name="currentCenter" id="currentCenter" required />
</p>
<p>
<label for="desiredCenter">Desired Study Center:</label><br />
<input type="text" name="desiredCenter" id="desiredCenter" required />
</p>
<h2>Reason for Change</h2>
<p>
<textarea name="reason" required></textarea>
</p>
<p>
<input type="submit" value="Submit Application" />
</p>
</form>
</body>
</html>
