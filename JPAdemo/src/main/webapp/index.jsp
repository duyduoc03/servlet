<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br/>
<a href="demo.jsp?name=duoc&age=19">demo</a>
<br/>
<a href="testInclude.jsp?name=T2108E&age=100">test</a>
<br/>
<a href="User/index.jsp">User</a>
<br/>
<a href="UserTest/listUser.jsp">UserTest</a>
<%--<%--%>
<%--    session.setAttribute("session","session implicit object");--%>
<%--    application.setAttribute("application","application implicit object");--%>
<%--    pageContext.setAttribute("pageScope","page implicit object", PageContext.PAGE_SCOPE);--%>
<%--    pageContext.setAttribute("sessionScope","session implicit object", PageContext.SESSION_SCOPE);--%>
<%--    pageContext.setAttribute("requestScope","request implicit object", PageContext.REQUEST_SCOPE);--%>
<%--    pageContext.setAttribute("applicationScope","application implicit object", PageContext.APPLICATION_SCOPE);--%>
<%--    request.getRequestDispatcher("demo.jsp?name=duoc&age=19").forward(request, response);--%>
<%--%>--%>
</body>
</html>