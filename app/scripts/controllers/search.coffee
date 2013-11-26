'use strict'

angular.module('watchlistWebApp')
  .controller 'SearchCtrl', ($scope, Themoviedb) ->


    $scope.search = () ->

      Themoviedb.searchMovie $scope.searchPhrase, (data) ->
        $scope.results = data.results
