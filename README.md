[Project Stratus](http://project-stratus.herokuapp.com/), Click here!

### Purpose

Project Stratus:

1. Project stratus was a project we created to practice working with API's and implementing them into a Sinatra Application.
2. API: Wunderground (weather underground)
3. The app requires user registration and login for access to the material. On users page, a list of previously selected cities is present along with a button to get the current temperature. Clicking the button will ping the database, sending the location that the user selected, and return a huge json object of all of the conditions for that area. For this example, we just selected the current 'feels like' temperature of that area and display it for the user. 

### Build

1. Sinatra/ActiveRecord
2. Postgresql
3. Ruby 2.3

### Quickstart

1. git clone 
2. bundle install
3. be rake db:create, migrate, seed
4. be shotgun
5. navigate to local host 9393
