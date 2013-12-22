'use strict'

angular.module('watchlistWebApp')
  .controller 'UsersCtrl', ($scope, Userservice) ->

    $scope.users = Userservice.query()
