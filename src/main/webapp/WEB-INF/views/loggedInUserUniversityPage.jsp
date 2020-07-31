<%--
  Created by IntelliJ IDEA.
  User: AzRy
  Date: 7/30/2020
  Time: 12:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page isELIgnored="false" %>
<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>University Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style><%@include file="styles/universityListing2.css"%>
div.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    width: 287px;
    height: 50px;
    cursor: pointer;
}
</style>
</head>
<body>
<p>
<h1 style="text-align: center; color:cadetblue;">
</h1>
</p>
<div class="uni-list">
    <c:forEach items="${allUniversities}" var="university">
        <a href="/user/addfaculty/${university.id}" style="float:right">
            Add faculty
        </a>
        <div class="list-group" style="height: 170px; width: 600px;">

            <p></p>
            <a href="/universityPage/${university.id}" class="list-group-item list-group-item-action"
               style="border-radius: 10px">

                <div class="uni-name">
                    University name : <h4>${university.universityName}</h4>
                </div>
                <div class="uni-desc">
                    Description: <p id="demo">${university.descriptions}...</p>

                </div>
            </a>
        </div>
        </p>
    </c:forEach>
</div>
<%--<div class="faculty-list" style="float: left; ">--%>
<%--    <%@include file="facultyListing.jsp"%>--%>
<%--</div>--%>
</body>
</html>