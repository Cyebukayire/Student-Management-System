<%--
  Created by IntelliJ IDEA.
  User: Ann
  Date: 5/11/2021
  Time: 9:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Error Page</title>
</head>
<body>
<center>
    <h1>Error description</h1>
    <h2><%=exception.getMessage() %><br/> </h2>
</center>
</body>
</html>