<%--
  Created by IntelliJ IDEA.
  User: Nghia B
  Date: 01/12/21
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<<html>
<head>
    <title>View car</title>
</head>
<body>
<h1 align="center">Car details</h1>
<p>
    <a href="/cars">Back to car list</a>
</p>
<table align="center">
    <tr>
        <td><img src="${car.getImage()}" /></td>
        <td>${car.getName()}</td>
        <td>${car.getVehicle()}</td>
        <td>${car.getBodyStyle()}</td>
        <td>${car.getEngine()}</td>
        <td>${car.getMaxPower()}</td>
        <td style="color: red">${car.getPrice()}</td>
    </tr>
</table>
</body>
</html>
