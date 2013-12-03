'use strict'

angular.module('watchlistWebApp')
  .service 'Sessionservice', ($cookies) ->

    authentificatedUserId = $cookies.authentificatedUserId
    console.log authentificatedUserId

    @setAuthentificatedUserId = (id) ->
      $cookies.authentificatedUserId = id
      authentificatedUserId = id

    @getAuthentificatedUserId = ->
      authentificatedUserId

    @logOut = ->
      $cookies.authentificatedUserId = ""


    @
