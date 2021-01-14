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
<h1 align="center">Thông tin xe</h1>
<p>
    <a href="/cars">Quay lại</a>
</p>

<div align="center">
    <div><img src="${car.getImage()}" height="400px"/></div>
    <div>Tên xe: ${car.getName()}</div>
    <div>Dòng xe: ${car.getVehicle()}</div>
    <div>Kiểu dáng: ${car.getBodyStyle()}</div>
    <div>Động cơ: ${car.getEngine()}</div>
    <div>Công suất cực đại: ${car.getMaxPower()}</div>
    <div style="color: red">Giá: ${car.getPrice()}</div>
</div>
</body>
</html>
