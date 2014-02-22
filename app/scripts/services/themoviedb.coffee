'use strict'

angular.module('watchlistWebApp')
  .service 'Themoviedb', ($resource, $http) ->

    baseURL = 'http://watchlist-koa.herokuapp.com/tmdb/3/'
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
          page: page
      .
        success (data, status, headers, config) ->
          callback data


    @getMovie = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'movie/' + id
        params:
          append_to_response: 'trailers,credits'
      .
        success (data, status, headers, config) ->
          callback data

    @searchForMovie = (phrase, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'search/movie'
        params:
          query: phrase
      .
        success (data, status, headers, config) ->
          callback data

    @getCompany = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'company/' + id
      .
        success (data, status, headers, config) ->
          callback data

    @getMoviesForCompany = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'company/' + id + '/movies'
      .
        success (data, status, headers, config) ->
          callback data

    @getGenre = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'genre/' + id
      .
        success (data, status, headers, config) ->
          callback data

    @getMoviesForGenre = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'genre/' + id + '/movies'
      .
        success (data, status, headers, config) ->
          callback data

    @getActor = (id, callback) ->

      $http
        method: 'GET'
        url: baseURL + 'person/' + id
      .
        success (data, status, headers, config) ->
          callback data
    @
