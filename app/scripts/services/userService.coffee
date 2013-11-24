'use strict'

angular.module('watchlistWebApp')
  .service 'Userservice', ($resource) ->

    api = $resource('http://watchlist-app-server.herokuapp.com/user/:id', {},
      {
        listUsers:
          method: "GET"
          isArray: true

        deleteUser:
          method: "DELETE"

        getUser:
          method: "GET"
          isArray: false

        createUser:
          method: "POST"
          params:
            name: ''
            email: ''
            password: ''
            address: ''
      }
    )

    @listUsers = ->
      api.listUsers()

    @



