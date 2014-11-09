angular.module('app').config ($routeProvider) ->
    $routeProvider.otherwise redirectTo: '/home'
