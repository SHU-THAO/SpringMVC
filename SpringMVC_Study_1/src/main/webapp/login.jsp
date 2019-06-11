<%--
  Created by IntelliJ IDEA.
  User: 12084
  Date: 2019/4/16
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
</head>
<body>
    <form action="${ctx}/user/login" method="post">
        用户名：<input type="text" name="userName"><br>
        密码：<input type="password" name="password"><br>
        <input type="submit" value="登陆">
    </form>
</body>
</html>
