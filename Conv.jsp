<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
String amountStr = request.getParameter("amount");
String fromCurrency = request.getParameter("fromCurrency");
String toCurrency = request.getParameter("toCurrency");
if (amountStr != null && fromCurrency != null && toCurrency != null) {
double amount = Double.parseDouble(amountStr);
double result = 0;
if (fromCurrency.equals("USD") && toCurrency.equals("EUR")) {
result = amount * 0.94; 
} else if (fromCurrency.equals("USD") && toCurrency.equals("GBP")) {
result = amount * 0.83; 
} else if (fromCurrency.equals("USD") && toCurrency.equals("INR")) {
result = amount * 82.81;
} else if (fromCurrency.equals("USD") && toCurrency.equals("JPY")) {
result = amount * 130.74;
} else if (fromCurrency.equals("USD") && toCurrency.equals("USD")) {
out.println("<h1> Same Currencies cannot be converted</h1>");
} else if (fromCurrency.equals("EUR") && toCurrency.equals("USD")) {
result = amount * 1.06;
} else if (fromCurrency.equals("EUR") && toCurrency.equals("JPY")) {
result = amount * 138.76;
}else if (fromCurrency.equals("EUR") && toCurrency.equals("INR")) {
result = amount * 87.87;
}else if (fromCurrency.equals("EUR") && toCurrency.equals("GBP")) {
result = amount * 0.88;
}else if (fromCurrency.equals("EUR") && toCurrency.equals("EUR")) {
out.println("<h1> Same Currencies cannot be converted<h1>");
}else if (fromCurrency.equals("INR") && toCurrency.equals("USD")) {
result = amount * 0.012;
}else if (fromCurrency.equals("INR") && toCurrency.equals("JPY")) {
result = amount * 1.58;
}else if (fromCurrency.equals("INR") && toCurrency.equals("INR")) {
out.println("<h1> Same Currencies cannot be converted<h1>");
}else if (fromCurrency.equals("INR") && toCurrency.equals("GBP")) {
result = amount * 0.010;
}else if (fromCurrency.equals("INR") && toCurrency.equals("EUR")) {
result = amount * 0.011;
}else if (fromCurrency.equals("GBP") && toCurrency.equals("USD")) {
result = amount * 1.21;
}else if (fromCurrency.equals("GBP") && toCurrency.equals("JPY")) {
result = amount * 157.58;
}else if (fromCurrency.equals("GBP") && toCurrency.equals("INR")) {
result = amount * 99.84;
}else if (fromCurrency.equals("GBP") && toCurrency.equals("GBP")) {
out.println("<h1> Same Currencies cannot be converted<h1>");
}else if (fromCurrency.equals("GBP") && toCurrency.equals("EUR")) {
result = amount * 1.14;
}else if (fromCurrency.equals("JPY") && toCurrency.equals("USD")) {
result = amount * 0.0077;
}else if (fromCurrency.equals("JPY") && toCurrency.equals("JPY")) {
out.println("<h1> Same Currencies cannot be converted<h1>");
}else if (fromCurrency.equals("JPY") && toCurrency.equals("INR")) {
result = amount * 0.63;
}else if (fromCurrency.equals("JPY") && toCurrency.equals("GBP")) {
result = amount * 0.0063;
}else if (fromCurrency.equals("JPY") && toCurrency.equals("EUR")) {
result = amount * 0.0072;
}
out.println("<h1>The result is: " + result + "</h1>");
}
%>
</body>
</html>
