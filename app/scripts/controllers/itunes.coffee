'use strict'

angular.module('watchlistWebApp')
  .controller 'ItunesCtrl', ($scope, $routeParams, Itunes) ->

    movieTitle = $routeParams.movieTitle

    Itunes.getOffers movieTitle, (offers) ->
      $scope.offers = offers
