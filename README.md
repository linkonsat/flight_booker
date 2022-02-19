### Setup 

First ensure that you have rails installed on your local machine. 
If running ruby -v does return 2.7 or higher you can check out the [official installation guide](https://www.ruby-lang.org/en/documentation/installation/).

After ensuring ruby is install run 

~~~
gem install rails 
~~~

After that you can clone this repository by running. 
 
 ~~~
 git clone git@github.com:linkonsat/flight_booker.git
 ~~~
 
 After that run the following commands in the newly installed directory.
 
 ~~~
 rails db:create
 rails db:migrate
 rails db:seed
 ~~~ 
 
 After letting these commands run you should be able to run.
 
 ~~~
 
 rails server
 
 ~~~
 
 At which point enter http://localhost:3000/ in your browser to visit the website locally!
 If you do not wish to do this feel free to visit the site at https://polar-crag-22146.herokuapp.com/.
 However please note that heroku tends to be a bit slower than on the local server.
 
 ### Lessons Learned
 1. How to use the ApplicationMailer object to send emails upon sucessful bookings
 2. How to use nested attributes to create objects during another object creation
 3. How to make a series of forms and pass only the necessary params. 
 
 ### Roadmap 
 
 1. Add the option to sign in as a user. 
 2. Style these user options.
 3. Add system tests for the devise user setup.
 4. Add the ability for a user to see their flight history.
