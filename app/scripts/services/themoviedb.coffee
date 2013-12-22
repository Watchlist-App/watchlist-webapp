'use strict'

angular.module('watchlistWebApp')
  .service 'Themoviedb', ($resource, $http) ->

    apiKey = "86afaae5fbe574d49418485ca1e58803"
    baseURL = 'http://api.themoviedb.org/3/'
    @imageURL = "http://d3gtl9l2a4fn1j.cloudfront.net/t/p/"
    @imageOriginal = "original"
    @imageLarge = "w500"
    @imageMedium = "w342"
    @imageSmall = "w185"
    @imageTiny = "w154"

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
          append_to_response: 'trailers,credits'
      .
        success (data, status, headers, config) ->
          callback data

    @searchForMovie = (phrase, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'search/movie'
        params:
          api_key: apiKey
          query: phrase
      .
        success (data, status, headers, config) ->
          callback data

    @getCompany = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'company/' + id
        params:
          api_key: apiKey
      .
        success (data, status, headers, config) ->
          callback data

    @getMoviesForCompany = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'company/' + id + '/movies'
        params:
          api_key: apiKey
      .
        success (data, status, headers, config) ->
          callback data

    @getGenre = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'genre/' + id
        params:
          api_key: apiKey
      .
        success (data, status, headers, config) ->
          callback data

    @getMoviesForGenre = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'genre/' + id + '/movies'
        params:
          api_key: apiKey
      .
        success (data, status, headers, config) ->
          callback data

    @getActor = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'person/' + id
        params:
          api_key: apiKey
      .
        success (data, status, headers, config) ->
          callback data
    @



