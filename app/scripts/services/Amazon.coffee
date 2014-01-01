'use strict'

angular.module('watchlistWebApp')
  .service 'Amazon', ($http) ->

    baseURL = 'http://watchlist-koa.herokuapp.com/amazon/DVD'

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
