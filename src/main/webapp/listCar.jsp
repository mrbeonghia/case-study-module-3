<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Nghia B
  Date: 01/07/21
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="head.css">
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-expand-lg navbar-dark "  style="background-color:#000000;" >
    <a class="navbar-brand" #>
        <img src="logo.png" height="25%" width="25%"  alt="">
    </a>
    <a href="login.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Admin</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <c:if test="${sessionScope['logged']==true }">
        <a href="/login?action=logout" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Log out</a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="createCar.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Thêm xe mới</a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="customers?action=customers" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Xem khach hang</a>&nbsp;&nbsp;&nbsp;&nbsp;
    </c:if>
</nav>

<nav class="navbar navbar-expand-lg navbar-light sticky-top "  style="background-color:#e82929;" >
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
        <form class="form-inline my-1 my-1">
            <input class="form-control  mr-1 " type="search" placeholder="Search" aria-label="Search">
            </br><a href=# ><img src="search.svg"></a>
        </form>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active ">
                <a class="nav-link " href="index.jsp"><b>Home</b>
                    <span class="sr-only">(current)</span></a>
            </li>

        </ul>
    </div>
</nav>

<!-- Container (Indicator) -->
<div class="container" style="background-color:white">
    <div class="row" >
        <c:forEach var="car" items="${requestScope['listCar']}">

                <div class="col-6"><a href="/cars?action=view&id=${car.getId()}">
                    <img src="${car.getImage()}" width="100%"/></a>
                    <div class="row text-center">
                        <div class="col-12"><a href="/cars?action=view&id=${car.getId()}">${car.getName()}</a></div>
                        <div class="col-12">${car.getPrice()}</div>
                        <c:if test="${sessionScope['logged']==true }">
                            <div class="col-12"><a href="/cars?action=edit&id=${car.getId()}">Sửa</a></div>
                            <div class="col-12"><a href="/cars?action=delete&id=${car.getId()}">Xoá</a></div>
                        </c:if>
                    </div>
                </div>


        </c:forEach>
    </div>
</div>
</div>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
