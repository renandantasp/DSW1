<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="local" value="Conversao" scope="page" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Conversao</title>
</head>

<body>
    <table style="width:50%; border: 1px solid black; border-collapse: collapse;\">
        <tr>
            <th style = "border:1px solid black;border-collapse: collapse;\"> Celsius </th>
            <th style = "border:1px solid black;border-collapse: collapse;\"> Fahrenheit </th>
        </tr>  
        <c:forEach var = "i" begin = "${sessionScope.conversao.min}" end = "${sessionScope.conversao.max}" step="${sessionScope.conversao.inc}">
        <tr>
            <th style = "border:1px solid black;border-collapse: collapse;\"> <c:out value = "${i}ºC"/> </th>
            <th style = "border:1px solid black;border-collapse: collapse;\"> <c:out value = "${(i*1.8) + 32}ºF"/> </th>
        </tr>
        </c:forEach>
    </table>
</body>

</html>
