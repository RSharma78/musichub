<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Music Hub: Product Details</title>

    <!-- CSS -->
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/bootstrap/css/product.css">
    <style type="text/css">
        body { padding-top:50px; }
    </style>

    <!-- JS -->
    <script src="resources/bootstrap/js/angular.min.js"></script>
    <script src="resources/bootstrap/js/product.js"></script>

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
      <a class="navbar-brand" href="#"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">MUSICHUB</a></li>
        <li><a href="#">About Us</a></li>
     <li><a href="register">Move On Register</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
        Categories of Products
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <li><a href="Products">Guitar</a></li>
          <li><a href="Products">Piano</a></li>
          <li><a href="Products">Flute</a></li> 
        </ul>
      </li>
        <li><a href="Login">Login</a></li>
      </ul>
      
    </div>
  </div>
</nav>

<div class="container" ng-app="sortApp" ng-controller="mainController">

    
  <form>
    <div class="form-group">
      <div class="input-group">
     <div class="input-group-addon"><i class="fa fa-search"></i></div>
     Enter the search Term:
        <input type="text" class="form-control" placeholder="Search music" ng-model="searchMusic">
      </div>      
    </div>
  </form>
  <table class="table table-bordered table-striped">
    

    <thead>
      <tr>
        <td>
          <a href="#" ng-click="sortType = 'id'; sortReverse = !sortReverse">
            Product ID 
            <span ng-show="sortType == 'id' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'id' && sortReverse" class="glyphicon gylphicon-arrow-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'name'; sortReverse = !sortReverse">
          Music Type
            <span ng-show="sortType == 'name' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'name' && sortReverse" class="glyphicon gylphicon-arrow-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         Brand
            <span ng-show="sortType == 'brand' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'brand' && sortReverse" class="glyphicon gylphicon-arrow-up"></span>
          </a>
        </td>
     
       
       
        <td>
          <a href="#" ng-click="sortType = 'price; sortReverse = !sortReverse">
            Price 
            <span ng-show="sortType == 'price' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'price' && sortReverse" class="glyphicon gylphicon-arrow-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'category'; sortReverse = !sortReverse">
            Category
            <span ng-show="sortType == 'category' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'category' && sortReverse" class="glyphicon gylphicon-arrow-up"></span>
          </a>
        </td>
        
        
        
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="ab in music | orderBy:sortType:sortReverse | filter:searchMusic">
        <td>{{ ab.id }}</td>
        <td>{{ ab.name }}</td>
        <td>{{ ab.brand }}</td>
        
       
        <td>{{ ab.price }}</td>
        <td>{{ ab.category }}</td>
      </tr>
    </tbody>
    
  </table>
 
  
  <p class="text-center">
    <a href="index">Music hub</a>
  </p>
  
</div><br>
 <footer class="container-fluid text-center">
  <p>Copyright:MusicHub@gmail.com</p>
</footer>
</body>
</body>
</html>