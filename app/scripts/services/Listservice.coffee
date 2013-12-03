'use strict'

angular.module('watchlistWebApp')
  .service 'Listservice', ($http) ->

    baseURL = 'http://watchlist-app-server.herokuapp.com/list'

    @addMovie = (userId, listTitle, movieId, callback) ->

      $http
        method: 'GET'
        url: baseURL + '/addMovie'
        params:
          listTitle: listTitle
          userId: userId
          movieId: movieId
      .
        success (data, status, headers, config) ->
          callback data

    @
