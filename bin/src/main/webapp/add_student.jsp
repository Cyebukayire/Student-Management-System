<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
         pageEncoding="UTF-8"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<html>
<head>
    <title>Students Managment System</title>
</head>
<body>
<center>
    <h1>Students Management System</h1>
    <h2>
<%--        <a href="/students_record/new">Add New Student</a>--%>
<%--        &nbsp;&nbsp;&nbsp;--%>
<%--        <a href="/students_record/list">List All Students</a>--%>
    <a href="/StudentsRecords_war_exploded/new">Add New Student</a>
    &nbsp;&nbsp;&nbsp;
    <a href="/StudentsRecords_war_exploded/list">List All Students</a>
    </h2>
</center>
<div align="center">
    <c:if test="${student != null}">
    <form action="update" method="post">
        </c:if>
        <c:if test="${student == null}">
        <form action="insert" method="post">
            </c:if>
            <table border="1" cellpadding="5">
                <caption>
                    <h2>
                        <c:if test="${student != null}">
                            Edit Student
                        </c:if>
                        <c:if test="${student == null}">
                            Add Student
                        </c:if>
                    </h2>
                </caption>
                <c:if test="${student != null}">
                    <input type="hidden" name="id" value="<c:out value='${student.id}' />" />
                </c:if>
                <tr>
                    <th>First Name: </th>
                    <td>
                        <input type="text" name="firstName" size="45"
                               value="<c:out value='${student.firstName}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Last Name: </th>
                    <td>
                        <input type="text" name="lastName" size="45"
                               value="<c:out value='${student.lastName}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>gender: </th>
                    <td>
                        <input type="text" name="gender" size="5"
                               value="<c:out value='${student.gender}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Save" />
                    </td>
                </tr>
            </table>
        </form>
</div>
</body>
</html>
