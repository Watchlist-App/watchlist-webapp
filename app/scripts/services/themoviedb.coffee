'use strict'

angular.module('watchlistWebApp')
  .service 'Themoviedb', ($resource, $http) ->

    apiKey = "86afaae5fbe574d49418485ca1e58803"
    baseURL = 'http://api.themoviedb.org/3/movie/'
    @imageURL = "http://d3gtl9l2a4fn1j.cloudfront.net/t/p/"
    @imageLarge = "w500"

    @popularMovies = (callback) ->

      $http
        method: 'GET'
        url: baseURL + 'popular'
        params:
          api_key:apiKey
      .
        success (data, status, headers, config) ->
          callback data


    @getMovie = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + id
        params:
          api_key: apiKey
          append_to_response: 'trailers'
          id: id
      .
        success (data, status, headers, config) ->
          callback data

    @



