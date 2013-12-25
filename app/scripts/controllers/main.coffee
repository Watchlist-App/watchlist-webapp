'use strict'

angular.module('watchlistWebApp')
  .controller 'MainCtrl', ($scope) ->

    $scope.signupHidden = yes
    $scope.signupToggle = ->
      if $scope.signupHidden then $scope.signupHidden = no
      else $scope.signupHidden = yes
