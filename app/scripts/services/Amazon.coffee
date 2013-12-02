'use strict'

angular.module('watchlistWebApp')

  .service 'Amazon', ($http) ->

    baseURL = 'http://watchlist-app-server.herokuapp.com/amazon/dvds'

    @getDvds = (title, callback) ->

      $http
        method: 'GET'
        url: baseURL
        params:
          title: title
      .
        success (data, status, headers, config) ->
          callback data

    @
