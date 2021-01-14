<%--
  Created by IntelliJ IDEA.
  User: Nghia B
  Date: 01/05/21
  Time: 09:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
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
</nav>

<nav class="navbar navbar-expand-lg navbar-light sticky-top "  style="background-color:#e82929;" >
  <div class="collapse navbar-collapse " id="navbarSupportedContent">
    <form class="form-inline my-1 my-1" action="searchCar.jsp">
      <input name = "key" class="form-control  mr-1 " type="search" placeholder="Search" aria-label="Search">
      </br><a href="searcCar.jsp"><img src="search.svg"></a>
    </form>
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active ">
        <a class="nav-link " href=""><b>Home</b>
          <span class="sr-only">(current)</span></a>
      </li>


    </ul>
  </div>
</nav>



<!-- Container (Brand) -->
<div id="band" class="container text-center">
  <h3  class="text-center" align="left"> Chào mừng bạn đến với Mercedes-Benz</h3>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <a href="cars?action=cars">
        <img src="home_1.jpg" class="img person" alt="Couldn't load image" width="200" height="200">
      </a>
      <p class="text-center"><strong>Danh sách xe</strong></p><br>
    </div>

    <div class="col-sm-4">
      <a href="customer.jsp" >
        <img src="home_2.jpg" class="img person" alt="Couldn't load image" width="200" height="200">
      </a>
      <p class="text-center"><strong>Đăng ký thông tin</strong></p><br>
    </div>
    <div class="col-sm-4">
      <a href="https://www.mercedes-benz.com.vn/vi/passengercars/buy/find-dealers.html" >
        <img src="home_3.jpg" class="img person" alt="Couldn't load image" width="200" height="200">
      </a>
      <p class="text-center"><strong>Xem danh sách đại lý</strong></p><br>
    </div>



  </div>
</div>

<!-- Container (Contact Section) -->

</div>


<br><br><Br>
<div class="card-group">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Overview</h5>
      <h5 class="card-text"><small class="text-muted">About us</small></h5>
      <h5 class="card-text"><small class="text-muted">FAQs</small></h5>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Liên hệ ngay</h5>
      <h5 class="card-text"><small class="text-muted">Sale: Nguyễn Trọng Nghĩa</small></h5>
      <h5 class="card-text"><small class="text-muted">Hot line : 035 728 3439</small></h5>
      <h5 class="card-text"><small class="text-muted">email : ntnghia199x@gmail.com</small></h5>
    </div>
  </div>
</div>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>

