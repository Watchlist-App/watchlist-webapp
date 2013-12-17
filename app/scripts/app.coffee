'use strict'

angular.module('watchlistWebApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'ngAnimate',
  'wu.masonry',
  'infinite-scroll',
  'angular-md5'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/signup',
        templateUrl: 'views/signup.html'
        controller: 'SignupCtrl'
      .when '/users',
        templateUrl: 'views/users.html'
        controller: 'UsersCtrl'
      .when '/profile/:userId',
        templateUrl: 'views/profile.html'
        controller: 'ProfileCtrl'
      .when '/movies',
        templateUrl: 'views/movies.html'
        controller: 'MoviesCtrl'
      .when '/movie/:movieId',
        templateUrl: 'views/movie.html'
        controller: 'MovieCtrl'
      .when '/search',
        templateUrl: 'views/search.html'
        controller: 'SearchCtrl'
      .when '/cinemas/:zipcode',
        templateUrl: 'views/cinemas.html'
        controller: 'CinemasCtrl'
      .when '/dvds/:movieTitle',
        templateUrl: 'views/dvds.html'
        controller: 'DvdsCtrl'
      .when '/itunes/:movieTitle',
        templateUrl: 'views/itunes.html'
        controller: 'ItunesCtrl'
      .when '/login',
        templateUrl: 'views/login.html'
        controller: 'LoginCtrl'
      .when '/company/:companyId',
        templateUrl: 'views/company.html'
        controller: 'CompanyCtrl'
      .when '/genre/:genreId',
        templateUrl: 'views/genre.html'
        controller: 'GenreCtrl'
      .otherwise
        redirectTo: '/'
