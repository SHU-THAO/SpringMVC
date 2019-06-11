<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmtt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>新闻评论查询</title>
    <!--引入CSS，否则没有对应的样式-->
    <link rel="stylesheet" href="${ctx}/static/plugins/layui/css/layui.css">

</head>
<body class="layui-layout-body">
<form action="${ctx}/news/main">
    <div class="layui-row">

        <div class="layui-col-md9">
            <form action="" class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label" style="font-size:20px;">新闻评论</label>
                </div>
            </form>
        </div>
        <div class="layui-col-md3">
            <input type = "submit" value="返回新闻列表" class="layui-btn">
        </div>

    </div>
</form>
<div>
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr><th colspan="6">
            <h2>
                新闻评论列表
            </h2>
        </th>
        </tr>
        <tr>
            <th>评论编号</th>
            <th>评论内容</th>
            <th>评论人</th>
            <th>评论时间</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${Comments}" var="obj">
            <tr>
                <td>${obj.id}</td>
                <td>${obj.content}</td>
                <td>${obj.author}</td>
                <td><fmtt:formatDate value="${obj.creatDate}" pattern="yyyy-mm-dd HH:MM:ss"></fmtt:formatDate></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!--引入JS-->
<script src="${ctx}/static/plugins/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });
</script>
</body>
</html>