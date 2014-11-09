angular.module('app').config ($routeProvider) ->
    $routeProvider.when "/home",
      templateUrl: 'app/home/template.html'
