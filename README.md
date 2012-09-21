
# Ruby on Rails Tutorial: sample application

This is the sample application for
[*Ruby on Rails Tutorial: Learn Rails by Example*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com/).

I faced lots of difficulties at the first try 

and ended up Failing tests in Chap 9. 

I couldn't fix it. I got lost totally.

learned a bit more details about git so that I can trace or undo my code better.

this time, I decided to use postgresql instead of sqlite. 

= The second try 
 
 Chap 3 clear! including Advanced setup

 Chap 4 Add full_title helper, Ruby Basic

 Chap 5 clear including excercises

 Chap 6 clear including excercises

 Chap 7 clear

 Chap 8 clear but skipped the optional part 8.3(Cucumber), 
 excercises(think it's the reason I had a issue)
 Chap 9 ~ 9.2.3 Friendly forwarding , 
 		I didn't have any error finishing it this time, it seems that the excercises of chap 8 was the issue.

 Chap 9 clear!
 Chap 10 clear!

The Progress is in Chap 10 exercises

     | ************************--- |			




---- User in DB ----
db-type: postgreSQL

> changed for 'gravatar' in 7.1.4.

name: "Example User"

email: "example@railstutorial.org"

password: "foobar"

password_confirmation: "foobar"


> reset for sign up page in 7.2

no user.

> sign up a user in 7.4.3 The first signup

name: Rails Tutorial

email: example@railstutorial.org

password: foobar

confirmation: foobar

> made users using faker gem in chap 9.3.2 
check the file for details 'lib/tasks/sample_data.rake'


> turned the test db into sqlite
something I should've done earlier.
I set all as psotgresql but all the data stored in db was reset everytime I run rspec. I should've read the configuration file carefully.
