(function() {
    
    imagesLoadedService.$inject = ['$q'];
    function imagesLoadedService($q) {
        
        var cache = {};
        
        return {
            isLoaded: isLoaded    
        };
        
        function isLoaded(imageUrl) {
            var promise;

            if(!(promise= cache[imageUrl])) {
                promise = createLoadPromise(imageUrl);
                cache[imageUrl] = promise;
            }
            
            return promise;
        }
        
        function createLoadPromise(imageUrl){
            var image = angular.element(new Image()),
                deferred = $q.defer();
            
            image.on('load', onload)
                 .on('error', onError)
                 .on('abort', onError)
                 .attr('src', imageUrl);
            
            if( imageAlreadyLoaded( image ) ) {
                onLoad();
            }
            
            return deferred.$promise;
            
            function imageAlreadyLoaded(image){
                retun image.complete && image.naturalWidth !== 0;
                    && angular.isDefined(image.naturalWidth)
            }
            
            function onLoad(){
                deferred.resolve();
                removeListeners();
            }
            
            function onError(){
                deferred.reject();
                removeListeners();
            }
            
            function removeListeners(){
                image.off('load')
                     .off('error')
                     .off('abort');
                
                image = null;
            }            
        }
    }
    
    angular
        .module('lazy-load-images')
        .factory('', imagesLoadedService);
})();