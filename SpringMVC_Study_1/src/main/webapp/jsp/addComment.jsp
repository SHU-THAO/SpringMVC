<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmtt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>新闻评论添加</title>
    <!--引入CSS，否则没有对应的样式-->
    <link rel="stylesheet" href="${ctx}/static/plugins/layui/css/layui.css">

</head>
<body class="layui-layout-body">

<form class="layui-form" action="${ctx}/comments/add/newsComment" method="post">

    <input type="hidden" name="NewsDetail.id" value="${id}">

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">评论内容</label>
        <div class="layui-input-block">
            <textarea name="content" placeholder="请输入内容" class="layui-textarea"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">评论作者</label>
        <div class="layui-input-block">
            <input type="text" name="author" required  lay-verify="required" placeholder="请输入昵称" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <input type ="submit" value="提交" class="layui-btn">
            <a href="javascript:history.go(-1);" class="layui-btn layui-btn-primary">返回</a>
        </div>
    </div>
</form>
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