<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>新闻查询系统</title>
    <!--引入CSS，否则没有对应的样式-->
    <link rel="stylesheet" href="${ctx}/static/plugins/layui/css/layui.css">

</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">

    <script>
        window.location='${ctx}/news/main';
    </script>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            内容主体区域
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © 新闻信息管理
    </div>
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