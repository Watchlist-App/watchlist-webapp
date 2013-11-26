'use strict'

angular.module('watchlistWebApp')
  .service 'Themoviedb', ($resource, $http) ->

    apiKey = "86afaae5fbe574d49418485ca1e58803"
    baseURL = 'http://api.themoviedb.org/3/'
    @imageURL = "http://d3gtl9l2a4fn1j.cloudfront.net/t/p/"
    @imageLarge = "w500"

    @popularMovies = (page, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'movie/popular'
        params:
          api_key: apiKey
          page: page
      .
        success (data, status, headers, config) ->
          callback data


    @getMovie = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'movie/' + id
        params:
          api_key: apiKey
          append_to_response: 'trailers'
          id: id
      .
        success (data, status, headers, config) ->
          callback data

    @searchMovie = (phrase, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'search/movie'
        params:
          api_key: apiKey
          query: phrase
      .
        success (data, status, headers, config) ->
          callback data


    @



