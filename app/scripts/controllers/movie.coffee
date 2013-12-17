'use strict'

angular.module('watchlistWebApp')
  .controller 'MovieCtrl', ($scope, $routeParams, $sce, Themoviedb, Listservice, Sessionservice) ->


    Themoviedb.getMovie( $routeParams.movieId, (data) ->

      $scope.movie = data
      $scope.poster = Themoviedb.imageURL + Themoviedb.imageLarge + data.backdrop_path

      trailerId = if data.trailers.youtube[0] then data.trailers.youtube[0].source
      $scope.trailerURL = $sce.trustAsResourceUrl("http://www.youtube.com/embed/" + trailerId)

    )

    $scope.addToWatchlist = ->
      Listservice.addMovie Sessionservice.authentificatedUser.id, "watchlist", $scope.movie.id, (data) ->

    $scope.actorPhoto = (path) ->
      photo = Themoviedb.imageURL + Themoviedb.imageTiny + path

