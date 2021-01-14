<%--
  Created by IntelliJ IDEA.
  User: Nghia B
  Date: 01/14/21
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
</head>
<body>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>Name</th>
            <th>Phone</th>
            <th>Email</th>
        </tr>
        <c:forEach var="customer" items="${sessionScope['listCustomer']}">
            <tr>
                <td><c:out value="${customer.getName()}"/></td>
                <td><c:out value="${customer.getPhone()}"/></td>
                <td><c:out value="${customer.getEmail()}"/></td>
                <td>
                    <a href="/customers?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
