angular.module('app').config ($routeProvider) ->
    $routeProvider.when "/about",
        templateUrl: 'app/about/template.html'
