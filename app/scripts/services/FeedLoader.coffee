'use strict'

angular.module('watchlistWebApp')
  .factory 'FeedLoader', ($resource) ->

    $resource 'http://ajax.googleapis.com/ajax/services/feed/load', {},
      fetch:
        method: 'JSONP'
        params:
          v: '2.0'
          callback: 'JSON_CALLBACK'
