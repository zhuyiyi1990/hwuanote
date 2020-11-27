<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="anno/testRequestParam?name=小明">RequestParam</a>
<hr/>
<form action="anno/testRequestBody" method="post">
    用户姓名:<input type="text" name="uname"/><br/>
    用户年龄:<input type="text" name="age"/><br/>
    <input type="submit" value="提交"/>
</form>
<hr/>
<a href="anno/testPathVariable/10">PathVariable</a>
<hr/>
<form action="anno/testPathVariable/15" method="post">
    <input type="text" name="uname"/>
    <input type="text" name="age"/>
    <%--提交方式指定为删除--%>
    <input type="hidden" name="_method" value="DELETE"/>
    <input type="submit" value="提交"/>
</form>
<hr/>
<a href="anno/testRequestHeader">RequestHeader</a>
<hr/>
<a href="anno/testCookieValue">CookieValue</a>
<hr/>
<form action="anno/testModelAttribute" method="post">
    用户姓名:<input type="text" name="uname"/><br/>
    用户年龄:<input type="text" name="age"/><br/>
    <input type="submit" value="提交"/>
</form>
<hr/>
<a href="anno/testSessionAttribute">SessionAttribute</a><br/>
<a href="anno/getSessionAttribute">getSessionAttribute</a><br/>
<a href="anno/deleteSessionAttribute">deleteSessionAttribute</a>
</body>
</html>