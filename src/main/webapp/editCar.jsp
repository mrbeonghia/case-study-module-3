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
    <title>Sủa thông tin xe</title>
</head>
<body>
<p>
    <a href="/cars">Quay lại</a>
</p>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Sủa thông tin xe
                </h2>
            </caption>
            <c:if test="${car != null}">
                <input type="hidden" name="id" value="<c:out value='${car.id}' />"/>
            </c:if>
            <tr>
                <th>Tên xe:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value='${car.name}'
                    />
                </td>
            </tr>
            <tr>
                <th>Dòng xe:</th>
                <td>
                    <input type="text" name="vehicle" size="45"
                           value='${car.vehicle}'
                    />
                </td>
            </tr>
            <tr>
                <th>Kiểu dáng:</th>
                <td>
                    <input type="text" name="bodyStyle" size="45"
                           value='${car.bodyStyle}'
                    />
                </td>
            </tr>
            <tr>
                <th>Động cơ:</th>
                <td>
                    <input type="text" name="engine" size="45"
                           value='${car.engine}'
                    />
                </td>
            </tr><tr>
                <th>Công suất cực đại:</th>
                <td>
                    <input type="text" name="maxPower" size="45"
                           value='${car.maxPower}'
                    />
                </td>
            </tr><tr>
                <th>Giá:</th>
                <td>
                    <input type="text" name="price" size="45"
                           value='${car.price}'
                    />
                </td>
            </tr><tr>
                <th>Đường dẫn ảnh:</th>
                <td>
                    <input type="text" name="image" size="45"
                           value="${car.image}"
                    />
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
