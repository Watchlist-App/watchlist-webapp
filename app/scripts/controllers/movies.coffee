'use strict'

angular.module('watchlistWebApp')
  .controller 'MoviesCtrl', ($scope, Themoviedb) ->

    $scope.movies = []
    page = 1
    ready = yes
    $scope.imageSize = "w300"
    $scope.activeSize = 4


    $scope.isActive = (size) ->
      yes if size == $scope.activeSize

    $scope.setSize = (size) ->
      $scope.activeSize = size
      $scope.imageSize = switch size
        when 1 then "w92"
        when 2 then "w154"
        when 3 then "w185"
        when 4 then "w300"
        when 5 then "w500"


    $scope.loadMore = () ->
      if ready
        ready = no
        Themoviedb.popularMovies page, (movies) ->
          $scope.movies = $scope.movies.concat movies.results
          ready = yes
          page++

    $scope.loadMore()
