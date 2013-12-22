'use strict'

angular.module('watchlistWebApp')
  .controller 'ActorCtrl', ($scope, $routeParams, Themoviedb, Listservice, Sessionservice) ->

    Themoviedb.getActor $routeParams.actorId, (actor) ->
      $scope.actor = actor
      $scope.photo = Themoviedb.imageURL + Themoviedb.imageLarge + actor.profile_path
