<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${param.lang}" />
<fmt:bundle basename="ApplicationResources" />
<fmt:setBundle basename="ApplicationResources" var="bundler" />
<html>
<head>
    <title>Locale</title>
</head>
<body>
<h1><a href="/localeServlet?lang=vi_VN"> VN </a> | <a href="/localeServlet?lang=en_US"> US </a></h1>
<h1>${welcome}</h1>
<h1>Country: ${country}</h1>
<h1>Number format: ${numberFormat}</h1>
<h1>Currency format: ${currencyFormat}</h1>
<h1>Percent format: ${percentFormat}</h1>
<h1>Full date: ${fullDateFormat}</h1>
<h1>short date: ${shortDateFormat}</h1>
<h1>simple date: ${simpleDateFormat}</h1>

<h1>Using JSTL</h1>
<fmt:formatNumber var="formatNumber" type="number" value="987654321" />
<h1>Number format: ${formatNumber}</h1>
<fmt:formatNumber var="formatCurrency" type="currency" value="987654321" />
<h1>Currency format: ${formatCurrency}</h1>
<fmt:formatNumber var="formatPercent" type="percent" value="0.3" />
<h1>Percent format: ${formatPercent}</h1>
<fmt:formatDate var="fullDate" dateStyle="FULL" value="<%= new Date()%>" />
<h1>Full date format: ${fullDate}</h1>
<fmt:formatDate var="shortDate" dateStyle="SHORT" value="<%= new Date()%>" />
<h1>Short date format: ${shortDate}</h1>
<%--<h1><fmt:bundle /></h1>--%>

</body>
</html>
