<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>response.jsp</title>
    <%--引入jQuery文件--%>
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <script>
        //页面加载,绑定单击事件
        $(function () {
            $("#btn").click(function () {
                $.ajax({
                    url:"${pageContext.request.contextPath}/user/testResponseBody",
                    contentType:"application/json;charset=utf-8",
                    type:"post",
                    data:'{"username":"tom","password":"111111","age":14}',
                    dataType:"json",
                    success:function (data) {
                        alert(data);
                        alert(data.password);
                        alert(data.age);
                    }
                });
            });
        });
    </script>
</head>
<body>
<a href="${pageContext.request.contextPath}/user/testReturnString">testReturnString</a><br/>
<a href="${pageContext.request.contextPath}/user/testVoid">testVoid</a><br/>
<a href="${pageContext.request.contextPath}/user/testModelAndView">testModelAndView</a><br/>
<a href="${pageContext.request.contextPath}/user/handler1">handler1</a><br/>
<a href="${pageContext.request.contextPath}/user/handler2">handler2</a><br/>
<a href="${pageContext.request.contextPath}/user/handler3">handler3</a><br/>
<a href="${pageContext.request.contextPath}/user/testForwardOrRedirect">testForwardOrRedirect</a><br/>
<%--测试testResponseBody--%>
<input type="button" id="btn" value="发送ajax请求"/>
</body>
</html>