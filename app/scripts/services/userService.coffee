'use strict'

angular.module('watchlistWebApp')
  .service 'Userservice', ($resource) ->
    $resource 'http://watchlist-app-server.herokuapp.com/user'
