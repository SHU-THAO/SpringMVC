<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 12084
  Date: 2019/4/10
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单</title>
</head>
<body>

    <c:forEach items="${orders}" var="obj">
        <tr>
            <td>${obj.id}</td>
            <td>${obj.name}</td>
        </tr>
    </c:forEach>

</body>
</html>
