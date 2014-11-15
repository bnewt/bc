angular.module('app').config ($routeProvider) ->
    $routeProvider.when "/testimonials",
        templateUrl: 'app/testimonials/template.html'
        controller: 'TestimonialsCtrl'
        controllerAs: 'vm'
        resolve:
            testimonials: (testimonialsService) ->
                testimonialsService.get()
