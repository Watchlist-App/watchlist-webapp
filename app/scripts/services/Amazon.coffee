'use strict'

angular.module('watchlistWebApp')

  .service 'Amazon', ($http) ->

    baseURL = "http://webservices.amazon.com/onca/xml"
    awsSecretKey =  ""
    service = "AWSECommerceService"
    operation = "ItemSearch"
    awsAccessKeyId = ""
    associateTag = ""
    version = "2011-08-01"
    searchIndex = "DVD"
    condition = "All"
    keywords = "spartacus"
    responseGroup = "Images,ItemAttributes,Offers"
    timestamp = ""

    @getDvdsForMovieTitle = (title, callback) ->

      $http
        method: 'get'
        url: baseURL
        params:
          "AWSSecretKey": awsSecretKey
          "Service": service
          "Operation": operation
          "AWSAccessKeyId": awsAccessKeyId
          "AssociateTag": associateTag
          "Version": version
          "SearchIndex": searchIndex
          "Condition": condition
          "Keywords": keywords
          "ResponseGroup": responseGroup
          "Timestamp": timestamp
      .
        success (data, status, headers, config) ->
          callback data

    @
