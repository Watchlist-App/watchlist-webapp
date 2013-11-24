'use strict'

angular.module('watchlistWebApp')
  .controller 'UsersCtrl', ($scope, Userservice) ->

    # $scope.users = Userservice.listUsers()
    $scope.users = Userservice.listUsers()
