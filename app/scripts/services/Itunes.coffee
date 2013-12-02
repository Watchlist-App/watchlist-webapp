'use strict'

angular.module('watchlistWebApp')
  .service 'Itunes', ($http) ->

    baseURL = 'https://itunes.apple.com/search'

    @getOffers = (title, callback) ->

      $http
        method: 'JSONP'
        url: baseURL
        params:
          term: title
          entity: "movie"
          callback: "JSON_CALLBACK"
      .
        success (data, status, headers, config) ->
          callback data.results

    @
