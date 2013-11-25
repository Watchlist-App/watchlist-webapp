'use strict'

angular.module('watchlistWebApp')
  .controller 'MovieCtrl', ($scope, $routeParams, Themoviedb) ->


    Themoviedb.getMovie( $routeParams.movieId, (data) ->
      $scope.movie = data
      $scope.poster = Themoviedb.imageURL + Themoviedb.imageLarge + data.backdrop_path
      $scope.trailer = if data.trailers.youtube[0] then data.trailers.youtube[0].source
    )
