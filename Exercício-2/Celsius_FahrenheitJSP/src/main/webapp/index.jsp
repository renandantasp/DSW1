<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Conversão Celsius-Fahrenheit</title>
    </head>
    <body>
        <fmt:bundle basename="messages">
            <form action="tratamento.jsp" method="POST">
                <fieldset >
                    <legend><fmt:message key="titulo"/></legend>
                    <fmt:message key="min"/> <input type="number" name="min" /><br/>
                    <fmt:message key="max"/> <input type="number" name="max" /><br/>
                    <fmt:message key="inc"/> <input type="number" name="inc" min="1" /><br/>
                    <input type="submit" value="<fmt:message key="submit"/>" />
                </fieldset>
            </form>
        </fmt:bundle>
    </body>
</html>
