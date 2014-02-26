'use strict'

angular.module('watchlistWebApp')
  .controller 'EbayCtrl', ($scope, $routeParams, Ebay) ->

    movieTitle = $routeParams.movieTitle

    Ebay.getOffers movieTitle, (offers) ->
      $scope.offers = offers
      console.log offers
