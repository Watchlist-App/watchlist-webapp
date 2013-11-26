'use strict'

angular.module('watchlistWebApp')
  .controller 'MoviesCtrl', ($scope, Themoviedb) ->

    $scope.movies = []
    page = 1
    ready = yes

    $scope.loadMore = () ->
      if ready
        ready = no
        Themoviedb.popularMovies(page, (data) ->
          $scope.movies = $scope.movies.concat(data.results)
          ready = yes
          page++
        )

    $scope.loadMore()
