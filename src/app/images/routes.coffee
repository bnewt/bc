angular.module('app').config ($routeProvider) ->
    routes = ['kitchen', 'bathroom', 'lower-level', 'exterior', 'commercial']
    registerRoute = (route) ->
        $routeProvider.when "/#{ route }",
          templateUrl: 'app/images/template.html'
          controller: 'ImagesCtrl'
          controllerAs: 'vm'
          resolve:
            images: (imagesService) ->
              imagesService.get(route)

    angular.forEach(routes, registerRoute)
    return
