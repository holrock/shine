var app = angular.module('customers', []);
app.controller('CustomerSearchController',
    [
      '$scope', 
      function($scope) {
        $scope.customers = []
        $scope.search = function(searchTerm) {
          $scope.customers = [
            {
              'first_name': 'Schuyler',
              'last_name': 'Cremin',
              'email': 'glies0@macgyver.net',
              'username': 'jillian0',
              'created_at': '2015-03-04',
            },
            {
              'first_name': 'hoge',
              'last_name': 'foo',
              'email': 'bar@macgyver.net',
              'username': 'quuuq',
              'created_at': '2015-03-05',
            },
          ];
        }
      }
    ]
);
