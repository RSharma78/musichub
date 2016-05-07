
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link href="${bts}/bootstrap.min.css" rel="stylesheet">
   <script src="${bts1}/jquery-2.2.3.js"></script>
    <script src="${bts1}/bootstrap.min.js"></script>
 

   <!-- JS -->
    <script src="${bts1}/angular.min.js"></script>
   
    <script>
    var app=angular.module('sortApp', [])

    app.controller('mainController', function($scope) {

    	 $scope.music = <%=request.getAttribute("list")%>;
    });
    </script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="sortApp">
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
                         <tr ng-repeat="disp in music | orderBy:'pid' | filter:searchMusic">
                         <td>{{ disp.pid }}</td>
                         <td>{{ disp.type}}</td>
                       <td>{{ disp.brand}}</td>
                  
                       <td>{{ disp.price}}</td>
                       <td>{{ disp.category}}</td>
                    
               
                      
                      </tr>
                     </tbody>
                   </table>
                   
                </div>
                   
                   
</body>
</html>