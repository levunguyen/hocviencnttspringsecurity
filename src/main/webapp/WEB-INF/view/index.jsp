<%--
  Created by IntelliJ IDEA.
  User: caoky
  Date: 8/10/2016
  Time: 9:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to Spring security</title>
</head>
<body>

   <div><span>This is default page, any one can access</span></div>
    <span><a href="<%=request.getContextPath()%>/login">Login</a></span>
</body>
</html>
