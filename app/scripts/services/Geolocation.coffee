'use strict'

angular.module('watchlistWebApp')
  .service 'Geolocation', ($http) ->

    baseURL = 'http://maps.googleapis.com/maps/api/geocode/json'

    @getAddressByPosition = (position, callback) ->

      latlng = position.coords.latitude + ',' + position.coords.longitude
      console.log latlng

      $http
        method: 'GET'
        url: baseURL
        params:
          latlng: latlng
          sensor: false
      .
        success (data, status, headers, config) ->
          callback data

    @

