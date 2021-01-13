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
    <style>
        body {
            font-family: "System", Times, serif;
            color: #777;
            /*background-image:url("bg..png");*/

            background-size:cover;
        }
        h5{
            margin: 0 0 0 20px;
            letter-spacing: 1px;
            font-size: 20px;
            color: #111;
            bgcolor:"#F08080";
        }
        .container {
            padding: 80px 120px;
        }
        .person {
            border: 10px solid transparent;
            margin-bottom: 25px;
            opacity: 0.7;
        }
        .person:hover {
            border-color: #f1f1f1;
        }
        .text-center{
            color: #ff0000 !important;
        }
        .carousel-inner img {
            width: 100%; /* Set width to 100% */
            margin: auto;
        }
        .carousel-caption h3 {
            color: #ff0000 !important;
        }
        @media (max-width: 600px) {
            .carousel-caption {
                display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
            }
        }
        .btn {
            padding: 3px 5px;
            transition: .2s;
            font-size: 15px !important;
        }
        .btn:hover, .btn:focus {
            border: 1px solid #111;
            background-color: black;
            color: white;
        }
        .w3-container{
            color: white;
        }

        .navbar {
            font-family: "System", Times, serif;
            margin-bottom: 0;

            border: 0;
            font-size: 15px !important;
            letter-spacing: 1px;
            opacity: 0.9;
        }
        .navbar li a, .navbar .navbar-brand {
            color: #fff !important;
        }
        .navbar-nav li a:hover {
            color: #000 !important;
        }
        .navbar-nav li.active a {
            color: #000 !important;

        }
        .navbar-default .navbar-toggle {
            border-color: transparent;
        }
        .nav-item-dropdown{
            color:#000;
        }
        footer {
            background-color: #e82929 ;
            border-color: transparent;
            padding:2px;
        }
        footer a {
            color:black;
        }
        footer a:hover {
            color:white;
            text-decoration: none;
        }
        .form-control {
            border-radius: 2px;
        }
        #navdrop , .dropdown-menu{
            background-color: #e82929;
        }
    </style>
        <%
if(request.getParameter("m1")!=null){%>

    <script>alert('Login Sucess!')</script>

        <%}
if(request.getParameter("m2")!=null){%>

    <script>alert('Added Success..!')</script>
        <%
}
%>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">


<nav class="navbar navbar-expand-lg navbar-dark "  style="background-color:#000000;" >
    <a class="navbar-brand" #>
        <img src="logo.png" height="15%" width="10%"  alt="">&nbspCARSTORE.com
    </a>
    <a href="admin.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Admin</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="user.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Account</a>

</nav>

<nav class="navbar navbar-expand-lg navbar-light sticky-top "  style="background-color:#e82929;" >
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
        <form class="form-inline my-1 my-1">
            <input class="form-control  mr-1 " type="search" placeholder="Search" aria-label="Search">
            </br><a href=# ><img src="baseline-search-24px.svg"></a>
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
<div style="background-color:white">

    </br></br>

    <table border="1" cellpadding="5">
        <c:forEach var="car" items="${requestScope['listCar']}">
            <tr>
                <td><a href="/cars?action=view&id=${car.getId()}"><img src="${car.getImage()}" height="200px" /></a></td>
                <td><a href="/cars?action=view&id=${car.getId()}">${car.getName()}</a></td>
                <td>${car.getPrice()}</td>
                <td><a href="/cars?action=edit&id=${car.getId()}">edit</a></td>
                <td><a href="/cars?action=delete&id=${car.getId()}">delete</a></td>
            </tr>
        </c:forEach>
    </table>

    </div>


</div>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
