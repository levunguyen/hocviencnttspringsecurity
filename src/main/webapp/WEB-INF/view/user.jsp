<%@page session="false"%>
<html>
<body>
	<h1>Title : ${title}</h1>	
	<h1>Message : ${message}</h1>
   <div>
	   <span><a href="<%=request.getContextPath()%>/main">Main Page</a></span>
   </div>
</body>
</html>