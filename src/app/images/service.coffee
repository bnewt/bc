angular.module('app').factory 'imagesService', ($http) ->
    indexPromise = undefined
    getIndex = ->
        return indexPromise if indexPromise?
        indexPromise = $http.get('img/index.json')
                            .then (result) -> result.data
    return {
        get: (type) ->
            getIndex().then (index) ->
                for image in index when image.indexOf(type) is 0
                    "img/#{image}"
    }
