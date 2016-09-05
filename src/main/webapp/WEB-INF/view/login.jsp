<%--
  Created by IntelliJ IDEA.
  User: caoky
  Date: 8/8/2016
  Time: 11:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
    <title></title>
</head>


  <div>Custom login page</div>
  <br/>
  <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
    <div class=" " style="color: red;">
          <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>

      <c:remove var = "SPRING_SECURITY_LAST_EXCEPTION" scope = "session" />
    </div>
  </c:if>
  <br/>
<form action="j_spring_security_check" method="post">
  <span>Login:</span><input name="username" type="text"/>
  <span>Password:</span><input name="password" type="password"/>
  <input type="submit" value="Login">
</form>
</body>
</html>
