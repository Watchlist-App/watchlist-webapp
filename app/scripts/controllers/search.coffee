'use strict'

angular.module('watchlistWebApp')
  .controller 'SearchCtrl', ($scope, Themoviedb) ->

    $scope.search = ->
      Themoviedb.searchForMovie $scope.searchPhrase, (searchResults) ->
        $scope.results = searchResults.results
