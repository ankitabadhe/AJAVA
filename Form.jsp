<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<h2>Enter Marks :</h2>
<form action="" method="post">
<table>
<tr>
<td></td>
<td>

</td>
</tr>
</table>
<table>
<tr>
<td align="center">MFCS</td>
<td align="center"><input type="text" size="5" name="c"/></td>
<td align="center">/100</td>
</tr>
<tr>
<td align="center">WT</td>
<td align="center"><input type="text" size="5" name="j"/></td>
<td align="center">/100</td>
</tr>
<tr>
<td align="center">SPM</td>
<td align="center"><input type="text" size="5" name="n"/></td>
<td align="center">/100</td>
</tr>
<tr>
<td align="center">ADBMS</td>
<td align="center"><input type="text" size="5" name="v"/></td>
<td align="center">/100</td>
</tr>
<tr>
<td align="center">AJAVA</td>
<td align="center"><input type="text" size="5" name="d"/></td>
<td align="center">/100</td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td></td>
</tr>
<tr><td></td><td align="center"><input type="submit" value="submit"/></td></tr>
</table>
</form>


<%
String c = request.getParameter("c");
String j = request.getParameter("j");
String n = request.getParameter("n");
String v = request.getParameter("v");
String d = request.getParameter("d");
if(!(c == null || c.isEmpty()))
{
    int cmarks = Integer.parseInt(c);
    int jmarks = Integer.parseInt(j);
    int nmarks = Integer.parseInt(n);
    int vmarks = Integer.parseInt(v);
    int dmarks = Integer.parseInt(d);

    int total = cmarks+jmarks+nmarks+vmarks+dmarks;
    int avg = (total)/5;
    int percent = avg;
    String grade ="";

    if(percent < 40){
        grade = "E";
        //request.setAttribute("grade", grade);
    }
    else if(percent >= 40 && percent <=44){
        grade = "D";
    }
    else if(percent >=45 && percent <=49){
        grade = "D+";
    }
    else if(percent >=50 && percent <=54){
        grade = "C-";
    }
    else if(percent >=55 && percent<=59){
        grade = "C";
    }
    else if(percent >=60 && percent <=64){
        grade = "C+";
    }
    else if(percent >=65 && percent<=69){
        grade = "B-";
    }
    else if(percent >=70 && percent <=74){
        grade = "B";
    }
    else if(percent >=75 && percent <=79){
        grade = "B+";
    }
    else if(percent >=80 && percent <=84){
        grade = "A";
    }
    else if (percent >=85 && percent <=100){
        grade = "A+";
    }
    request.setAttribute("Grade", grade);
    %> 
       
    <table>
   
   
    <tr>
    <td><b>Your Grade is :</b></td><td></td>
    <td align="center"><%=grade %></td>    
    </tr>
    </table>
    <%    
}
%>

</body>
</html>
