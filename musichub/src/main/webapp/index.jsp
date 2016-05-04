<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MUSICHUB</title>

   <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <script src="resources/bootstrap/js/jquery-2.2.3.js"></script>
    <script src="resources/bootstrap/js/bootstrap.min.js"></script>
 
    <style type="text/css">

 .carousel-inner img
  {
      width:50%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }
    </style>    
    </head>
    <body>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Listening To Music</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#" style="font-size:24pt "></a></li>
        <li><a href="#">Home Page</a></li>
        <li><a href="#">AboutUs</a></li>
        
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Products">Guitar</a></li>
          <li><a href="Products">Piano</a></li>
          <li><a href="Products">Flute</a></li> 
        </ul>
      </li>
        <li><a href="Register">Register Here</a></li>
        <li><a href="Login">Login</a></li>
      </ul>
      
    </div>
  </div>
</nav>
<div class="container-fluid">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1" ></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/music4.jpg" alt="Image1">
                
      </div>

      <div class="item">
        <img src="resources/images/music6.jpg" alt="Image2">
        
      </div>
    </div>

    <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span></a>
</div>
</div>
<div class="container text-center">    
  
  <div class="row">
    <div class="col-sm-4">
      <img src="resources/images/music1.jpg" class="img-responsive" style="width:100%" alt="Image">
     
    </div>
    <div class="col-sm-4"> 
      <img src="resources/images/music2.jpg" class="img-responsive" style="width:100%" alt="Image">
      
    </div>
    <div class="col-sm-4">
      <img src="resources/images/music3.jpg" class="img-responsive" style="width:100%" alt="Image">
      
      </div>
   
    </div>
  </div>
</div><br>
  <footer class="container-fluid text-center">
  <p>Copyright: </p>
</footer>
</body>
</html>
    