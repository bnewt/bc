angular.module('app').controller 'ImagesCtrl', (images) ->
    vm = @
    vm.images = images
    return vm
