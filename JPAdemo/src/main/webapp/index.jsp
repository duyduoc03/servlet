<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="a" uri="WEB-INFO/tld/myCustomTag.tld" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a:MyFirstCustomTag name="duoc"/>
<a href="hello-servlet">Hello Servlet</a>
<br/>
<a href="demo.jsp?name=duoc&age=19">demo</a>
<%--<br/>--%>
<%--<a href="testInclude.jsp?name=T2108E&age=100">test</a>--%>
<br/>
<a href="User/index.jsp">User</a>
<br/>
<a href="userServlet">UserTest</a>
<br/>
<a href="localeServlet?lang=vi_VN">locale</a>
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