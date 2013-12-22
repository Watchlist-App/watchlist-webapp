'use strict'

angular.module('watchlistWebApp')
  .service 'Fandango', (FeedLoader) ->

    @newMovies = (zipCode, callback) ->
      feedURL = "http://www.fandango.com/rss/moviesnearme_#{zipCode}.rss"
      FeedLoader.fetch
        q: feedURL
        num: 10
      ,
        {}
      ,
        (data) ->
          callback data.responseData.feed

    @

