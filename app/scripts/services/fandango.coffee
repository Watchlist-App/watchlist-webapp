'use strict'

angular.module('watchlistWebApp')
  .service 'Fandango', (FeedLoader) ->

    zipCode = '90210'
    feedURL = "http://www.fandango.com/rss/moviesnearme_#{zipCode}.rss"
    @feed = []


    @newMovies = (callback) ->
       FeedLoader.fetch
          q: feedURL
          num: 10
        ,
          {}
        ,
          (data) ->
            callback data.responseData.feed

    @

