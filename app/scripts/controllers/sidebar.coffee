'use strict'

angular.module('watchlistWebApp')
  .controller 'SidebarCtrl', ($scope) ->

    $scope.sidebar = no

    $scope.sidebarToggle = ->
      if $scope.sidebar
        $scope.sidebar = no
        console.log $scope.sidebar
      else
        $scope.sidebar = yes
        console.log $scope.sidebar



