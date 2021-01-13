<%--
  Created by IntelliJ IDEA.
  User: Nghia B
  Date: 01/12/21
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit customer</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/cars">Back to customer list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thông tin xe</legend>
        <table>
            <tr>
                <td>Tên xe: </td>
                <td><input type="text" name="name" id="name" value="${requestScope["car"].getName()}"></td>
            </tr>
            <tr>
                <td>Dòng xe: </td>
                <td><input type="text" name="vehicle" id="vehicle" value="${requestScope["car"].getVehicle()}"></td>
            </tr>
            <tr>
                <td>Kiểu dáng: </td>
                <td><input type="text" name="bodyStyle" id="bodyStyle" value="${requestScope["car"].getbodyStyle()}"></td>
            </tr>
            <tr>
                <td>Động cơ: </td>
                <td><input type="text" name="engine" id="engine" value="${requestScope["car"].getEngine()}"></td>
            </tr>
            <tr>
                <td>Công suất cực đại: </td>
                <td><input type="text" name="maxPower" id="maxPower" value="${requestScope["car"].getMaxPower()}"></td>
            </tr>
            <tr>
                <td>Giá: </td>
                <td><input type="text" name="price" id="price" value="${requestScope["car"].getprice()}"></td>
            </tr>
            <tr>
                <td>Ảnh: </td>
                <td><input type="text" name="image" id="image" value="${requestScope["car"].getImage()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
