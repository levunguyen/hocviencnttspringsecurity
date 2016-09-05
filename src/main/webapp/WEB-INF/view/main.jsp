<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
<h1>Title : ${title}</h1>
<h1>Message : ${message}</h1>

<c:if test="${pageContext.request.userPrincipal.name != null}">
  <h2>Welcome : ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/logout" />" > Logout</a></h2>
</c:if>

<!-- Alternative
	<c:if test="${pageContext.request.remoteUser != null}">
		<h2>Welcome : ${pageContext.request.remoteUser}</h2>
	</c:if>
 	-->
<ul>
  <sec:authorize access="hasRole('ROLE_ADMIN')">
    <li><a href="<%=request.getContextPath()%>/admin">Admin</a></li>
  </sec:authorize>
  <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')">
    <li><a href="<%=request.getContextPath()%>/user">User</a></li>
  </sec:authorize>
</ul>
</body>
</html>
