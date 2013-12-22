'use strict'

angular.module('watchlistWebApp')
  .controller 'MovieCtrl', ($scope, $routeParams, $sce, Themoviedb, Listservice, Sessionservice) ->


    Themoviedb.getMovie $routeParams.movieId, (movie) ->

      $scope.movie = movie
      $scope.poster = Themoviedb.imageURL + Themoviedb.imageLarge + movie.backdrop_path

      trailerId = if movie.trailers.youtube[0]? then movie.trailers.youtube[0].source

      #dirty hack to change url in iframe
      $scope.trailerURL = $sce.trustAsResourceUrl("http://www.youtube.com/embed/" + trailerId)

    $scope.addToWatchlist = ->
      Listservice.addMovie Sessionservice.authentificatedUser.id, "watchlist", $scope.movie.id, (response) ->
        console.log response

    $scope.actorPhoto = (path) ->
      photo = Themoviedb.imageURL + Themoviedb.imageTiny + path

