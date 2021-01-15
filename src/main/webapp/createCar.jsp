<%--
  Created by IntelliJ IDEA.
  User: Nghia B
  Date: 01/06/21
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="head.css">
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-expand-lg navbar-dark "  style="background-color:#000000;" >
    <a class="navbar-brand" #>
        <img src="logo.png" height="25%" width="25%"  alt="">
    </a>
    <a href="#" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Admin</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="logout.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Logout</a>
</nav>

<nav class="navbar navbar-expand-lg navbar-light sticky-top "  style="background-color:#e82929;" >
    <div class="collapse navbar-collapse " id="navbarSupportedContent" >

        <ul class="navbar-nav ml-auto">
            <li class="nav-item active ">
                <a class="nav-link " href="index.jsp"><b>Home</b>
                    <span class="sr-only">(current)</span></a>
            </li>

        </ul>
    </div>
</nav>

<!-- Container (Indicator) -->
<div style="background-color:white" align="center">
    <style>
        tr{

            color: black;
        }

    </style>
    <p>
        <a href="/cars">Quay lại</a>
    </p>
    <br><Br>
    <h2 style="color:black">Tạo mẫu xe mới</h2>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <table>
        <form  method="post" action="/cars?action=create">
            <tr>
                <th>Tên xe</th>      <th> <input type="text"  name="name" required="" autocomplete="off"></th>
            </tr>
            <tr>
                <th>Dòng xe</th>      <th> <input type="text"  name="vehicle" required="" autocomplete="off"></th>
            </tr>
            <tr><th>Kiểu dáng</th><th><select  name="bodyStyle" required="" style="width:198px">
                <option value="" style="color: black">Chọn</option>
                <option value="Sedan" style="color: black">Sedan</option>
                <option value="SUV" style="color: black">SUV</option>
                <option value="Hatchback" style="color: black">Hatchback</option>
                <option value="Pickup" style="color: black">Pick-up</option>
                <option value="Coupe" style="color: black">Coupé</option>
                <option value="MPV" style="color: black">MPV</option>
                <option value="Cabriolet" style="color: black">Carbiolet</option>

            </select></th>
            </tr>

            <tr>
                <th>Động cơ</th>  <th><input type="text"  name="engine" required="" autocomplete="off"></th></tr>
            <tr>
                <th>Công suất cực đại</th><th> <input type="text" name="maxPower" required="" autocomplete="off"> </th></tr>
            <tr>
                <th>Giá</th><th> <input type="text"  name="price" required="" autocomplete="off">  </th></tr>
            <tr>
                <th>Đường dẫn ảnh</th><th><input type="text" name="image" required="" autocomplete="off">  </th></tr>
            <tr>
                <th> <input type="submit" value="Thêm" style="background: skyblue "> </th></tr>

        </form>
    </table>

    <Br><br><Br><Br>

</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>
