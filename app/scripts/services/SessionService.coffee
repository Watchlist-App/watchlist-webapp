'use strict'

angular.module('watchlistWebApp')
  .service 'Sessionservice', ($cookies) ->

    @authentificatedUser =
      name: $cookies.username
      email: $cookies.email
      id: $cookies.id

    @logIn = (user) ->
      @authentificatedUser =
        name: user.name
        email: user.email
        id: user.id
      $cookies.username = user.name
      $cookies.email = user.email
      $cookies.id = user.id

    @logOut = ->
      delete $cookies.username
      delete $cookies.email
      delete $cookies.id
      @authentificatedUser = {}

    @
