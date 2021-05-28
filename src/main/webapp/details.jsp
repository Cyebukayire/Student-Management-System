<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/13/2021
  Time: 11:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>

<html>
<head>
<link rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous">
	<title>one student details</title>
</head>
<body>
	<center>
		<h1>Student's details</h1>
    <h2>
        <a href="/Student_Recording_app_war_exploded/new">Add New Student</a>
        &nbsp;&nbsp;&nbsp;
        <a href="/Student_Recording_app_war_exploded/list">List All Students</a>
    </h2>
	</center>
	
	<div align="center">
		<caption>student details</caption>	
		<div>
		<div>
		<h6 class="d-inline">Id :</h6>
		<span class="d-inline"><c:out value="${student.id }"/></span>
		</div>
		<div>
		<h6 class="d-inline">First name :</h6>
		<span class="d-inline"><c:out value="${student.firstName }" /></span>
		</div>
		<div>
		<h6 class="d-inline">Last name :</h6>
		<span class="d-inline"><c:out value="${student.lastName }" /></span>
		</div>
		<div>
		<h6 class="d-inline">Gender :</h6>
		<span class="d-inline"><c:out value="${student.gender }" /></span>
		</div>
		<a href="/Student_Recording_app_war_exploded/edit?id=<c:out value='${student.id}' />">Edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
        <a href="/Student_Recording_app_war_exploded/delete?id=<c:out value='${student.id}' />">Delete</a>
        </div>
	</div>
</body>
</html>