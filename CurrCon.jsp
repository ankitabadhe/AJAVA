<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<form action="Conv.jsp" method="get">
Enter the amount:
<input type="text" name="amount" />
<br /><br />
Select the currency to convert from:
<select name="fromCurrency">
<option value="USD">US Dollar</option>
<option value="EUR">Euro</option>
<option value="GBP">British Pound</option>
<option value="INR">Indian Rupee</option>
<option value="JPY">Japanese Yen</option>
</select>
<br /><br />
Select the currency to convert to:
<select name="toCurrency">
<option value="USD">US Dollar</option>
<option value="EUR">Euro</option>
<option value="GBP">British Pound</option>
<option value="INR">Indian Rupee</option>
<option value="JPY">Japanese Yen</option>
</select>
<br /><br />
<input type="submit" value="Convert" />
</form>
</body>
</html>
