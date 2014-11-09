angular.module('app').factory 'imagesService', ($http) ->
  indexPromise = undefined
  getIndex = ->
      return indexPromise if indexPromise?
      indexPromise = $http
                      .get('images/index.json')
                      .then (result) ->
                        result.data
  get: (type) ->
    getIndex().then (index) ->
        for image in index when image.indexOf(type) is 0
          "images/#{image}"
