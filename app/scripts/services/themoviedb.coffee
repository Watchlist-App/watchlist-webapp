'use strict'

angular.module('watchlistWebApp')
  .service 'Themoviedb', ($resource, $http) ->

    @getMovies = (callback) ->

      # api = $resource('http://api.themoviedb.org/3/movie/popular?api_key=86afaae5fbe574d49418485ca1e58803', {},
      $http( {method: 'GET', url: 'http://api.themoviedb.org/3/movie/popular?api_key=86afaae5fbe574d49418485ca1e58803'}).
        success( (data, status, headers, config) ->
          callback(data)
        )


    @



