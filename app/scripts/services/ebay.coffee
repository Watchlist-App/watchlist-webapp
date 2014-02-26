'use strict'

angular.module('watchlistWebApp')
  .service 'Ebay', ($http) ->

    baseUrl = 'http://watchlist-koa.herokuapp.com/ebay'

    @getOffers = (title, callback) ->

      $http
        method: 'GET'
        url: baseUrl
        params:
          'OPERATION-NAME': 'findItemsByKeywords'
          keywords: title
      .
          success (data, status, headers, config) ->
            callback data.findItemsByKeywordsResponse[0].searchResult[0].item

    @
