Watchlist web app
================

##Technology stack:
###Front-end
[AngularJS](http://angularjs.org)  
[CoffeeScript](http://coffeescript.org)(instead of Javascript)  
[Jade](http://jade-lang.com)(instead of HTML)  
[Bootstrap](http://getbootstrap.com)  

###Back-end
[Node.js](http://nodejs.org)  
[Sails](http://sailsjs.org)  
[Express.js](http://expressjs.com)  
[socket.io](http://socket.io)  
[MongoDB](http://www.mongodb.org)  
[Redis](http://redis.io)  

WebApp is currently hosted on [heroku](http://watchlist-webapp.herokuapp.com/#/)  
User accounts are stored on our [server](http://watchlist-app-server.herokuapp.com/user). (Github [repo](https://github.com/Watchlist-App/watchlist-server))  
Sessions are stored on [redis cloud](http://redis-cloud.com)  
Database is hosted on [mongolab](https://mongolab.com)  
Movie data provided by [themoviedb](themoviedb.org)  
Cinemas and tickets info provided by [fandango](fandango.com)


What we have so far:
================================
[Sign up page](http://watchlist-webapp.herokuapp.com/#/signup) with both client and server side validation  
[Movie info page](http://watchlist-webapp.herokuapp.com/#/movie/100)  
[Movie search page](http://watchlist-webapp.herokuapp.com/#/search)  
[Popular movies page](http://watchlist-webapp.herokuapp.com/#/movies) with infinite scrolling  
[registered users list](http://watchlist-webapp.herokuapp.com/#/users) (admin page in the future)  
Very simple [user profile](http://watchlist-webapp.herokuapp.com/#/profile/52813effd528cc9e87000001)  
[Cinemas near you](http://watchlist-webapp.herokuapp.com/#/cinemas/90210), based on your location (location detection not implemented yet. For now just put your zipcode in URL. *e.g:* cinemas/90001 for Los Angeles)
