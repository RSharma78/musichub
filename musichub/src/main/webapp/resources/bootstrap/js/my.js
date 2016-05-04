var app = angular.module('app', []);

app.controller('MainControl', function($scope) {
  $scope.orderByField = 'name';
  $scope.reverseSort = false;

  $scope.data = {
    mymusic: [{
      id: 'John',
      name: 'Doe',
      brand: 30
    },{
      firstName: 'Frank',
      lastName: 'Burns',
      age: 54
    },{
      firstName: 'Sue',
      lastName: 'Banter',
      age: 21
    }]
  };
});