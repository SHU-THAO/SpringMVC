<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmtt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>新闻查询</title>
    <!--引入CSS，否则没有对应的样式-->
    <link rel="stylesheet" href="${ctx}/static/plugins/layui/css/layui.css">

</head>
<body class="layui-layout-body">
<form action="${ctx}/news/query/title">
    <div class="layui-row">

        <div class="layui-col-md9">
            <form action="" class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label" style="font-size:20px;">新闻标题</label>
                    <div class="layui-input-block">
                        <input type="text" name="title" value="${title}" class="layui-input">
                    </div>
                </div>
            </form>
        </div>
        <div class="layui-col-md3">
            <input type = "submit" value="查询" class="layui-btn">
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
                    新闻列表
                </h2>
            </th>
            </tr>
        <tr>
            <th>新闻编号</th>
            <th>新闻标题</th>
            <th>新闻摘要</th>
            <th>作者</th>
            <th>创作时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${news}" var="obj">
                <tr>
                    <td>${obj.id}</td>
                    <td>${obj.title}</td>
                    <td>${obj.summary}</td>
                    <td>${obj.author}</td>
                    <td><fmtt:formatDate value="${obj.creatDate}" pattern="yyyy-mm-dd HH:MM:ss"></fmtt:formatDate></td>
                    <td>
                        <%--rest风格查询，根据newsid进行查询--%>
                        <a href="${ctx}/comments/query/newsid/${obj.id}" class="layui-btn layui-btn-primary">查看评论</a>
                        <a href="${ctx}/comments/add/newsid/${obj.id}" class="layui-btn layui-btn-primary">评论</a>
                        <a href="${ctx}/news/delete/newsid/${obj.id}" class="layui-btn layui-btn-primary">删除</a>
                    </td>
                </tr>
            </c:forEach>
        <tr>
            <td colspan="6">
                <c:if test="${deleteFlag == true}">
                    <span style="color: red">删除成功</span>
                </c:if>
                <c:if test="${deleteFlag == false}">
                    <span style="color: black">失败</span>
                </c:if>
            </td>
        </tr>
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