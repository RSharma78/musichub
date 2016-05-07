<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <c:url var="img" value="/resources/images" />
    <c:url var="bts" value="/resources/bootstrap/css" />
    <c:url var="bts1" value="/resources/bootstrap/js" />
    <title>MUSICHUB</title>

   <link href="${bts}/bootstrap.min.css" rel="stylesheet">
   <script src="${bts1}/jquery-2.2.3.js"></script>
    <script src="${bts1}/bootstrap.min.js"></script>
 
    <style type="text/css">

 .carousel-inner img
  {
      width:50%; /* Set width to 50% */
      margin: auto;
      min-height:200px;
  }
    </style>    
     <!-- JS -->
    <script src="${bts1}/angular.min.js"></script>
   
    <script>
    angular.module('sortApp', [])

    .controller('mainController', function($scope) {

    
      $scope.music = <%=request.getAttribute("list")%>;
      
    });
    </script>
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
        <img src="${img}/music5.jpg" alt="Image1">
                
      </div>

      <div class="item">
        <img src="${img}/music4.jpg" alt="Image2">
        
      </div>
    </div>

    <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span></a>
</div>
</div>
      
      
      
      <a class="navbar-brand" href="#"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">MUSICHUB</a></li>
        <li><a href="#">About</a></li>
     <li><a href="register">Register</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products
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
            <span ng-show="sortType == 'id' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'id' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'name'; sortReverse = !sortReverse">
          Music Type
            <span ng-show="sortType == 'name' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'name' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         Brand
            <span ng-show="sortType == 'brand' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'brand' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
     
       
       
        <td>
          <a href="#" ng-click="sortType = 'price; sortReverse = !sortReverse">
            Price 
            <span ng-show="sortType == 'price' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'price' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'category'; sortReverse = !sortReverse">
            Category
            <span ng-show="sortType == 'category' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'category' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
               
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="ab in music | orderBy:sortType:sortReverse | filter:searchMusic">
        <td>{{ ab.pid }}</td>
        <td>{{ ab.type }}</td>
        <td>{{ ab.brand }}</td>
        <td>{{ ab.price }}</td>
        <td>{{ ab.category }}</td>
       
        
      </tr>
    </tbody>
  
  </table>
 <table>
 
  <tr ng-repeat="disp in music | orderBy:sortType:sortReverse | filter:searchMusic">
    
        <td>{{ disp.pid }}</td>
        <td>{{ disp.type }}</td>
        <td>{{ disp.brand }}</td>
   
        <td>{{ disp.price }}</td>
        <td>{{ disp.category }}</td>
       
      
        <td>
        <form action="displayProducts" method=post>
        <input type="hidden" value={{disp.pid}} name="pid"/>
        <input type="hidden" value={{disp.type}} name="type"/>
        <input type="hidden" value={{disp.brand}} name="brand"/>
        <input type="hidden" value={{disp.price}} name="price"/>
        <input type="hidden" value={{disp.category}} name="category"/>
        
        <button type="submit">MoveToNext</button> </form>  </td>
   </tr>

     ​
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