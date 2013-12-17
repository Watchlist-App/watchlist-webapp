'use strict'

angular.module('watchlistWebApp')
  .controller 'ActorCtrl', ($scope, $routeParams, Themoviedb, Listservice, Sessionservice) ->

    Themoviedb.getActor $routeParams.actorId, (data) ->
      $scope.actor = data
      $scope.photo = Themoviedb.imageURL + Themoviedb.imageLarge + data.profile_path
