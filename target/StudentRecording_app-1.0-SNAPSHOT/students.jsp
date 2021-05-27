<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Students Managment</title>
</head>
<body>
<center>
    <h1>Students Management</h1>
    <h2>
<%--        <a href="/students_record/new">Add New Student</a>--%>
<%--        &nbsp;&nbsp;&nbsp;--%>
<%--        <a href="/students_record/list">List All Students</a>--%>
        <a href="/Student_Recording_app_war_exploded/new">Add New Student</a>
        &nbsp;&nbsp;&nbsp;
        <a href="/Student_Recording_app_war_exploded/list">List All Students</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Students</h2></caption>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Gender</th>
            <th></th>
        </tr>
        <c:forEach var="student" items="${listStudent}">
            <tr>
                <td>${student.firstName}</td>
                <td><c:out value="${student.lastName}" /></td>
                <td><c:out value="${student.gender}" /></td>
                <td>
                    <a href="/Student_Recording_app_war_exploded/edit?id=<c:out value='${student.id}' />">Edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/Student_Recording_app_war_exploded/delete?id=<c:out value='${student.id}' />">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
