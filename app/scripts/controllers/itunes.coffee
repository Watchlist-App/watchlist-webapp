'use strict'

angular.module('watchlistWebApp')
  .controller 'ItunesCtrl', ($scope, $routeParams, Itunes) ->

    movieTitle = $routeParams.movieTitle

    Itunes.getOffers movieTitle, (data) ->
      $scope.offers = data
      console.log $scope.offers
