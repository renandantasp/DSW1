<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="conversao" class="proj.src.beans.Conversao" scope="session" />
<jsp:setProperty name="conversao" property="min" param="min" />
<jsp:setProperty name="conversao" property="max" param="max" />
<jsp:setProperty name="conversao" property="inc" param="inc" />
<c:choose>
    <c:when test="${sessionScope.conversao.min < sessionScope.conversao.max}">
        <jsp:forward page="conversao.jsp"/>
    </c:when>
    <c:otherwise>
        <jsp:forward page="index.jsp" />
    </c:otherwise>
</c:choose>
