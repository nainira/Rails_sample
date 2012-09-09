
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
 Chap 8 clear but skipped the optional part 8.3(Cucumber), excercises(think it's the reason I had a issue)
 Chap 9 ~ 9.2.3 Friendly forwarding , 
 		I didn't have any error finishing it this time, it seems that the excercises of chap 8 was the issue.

 Chap 9 clear!


     | *********************------ |			

The Progress is in Chap 10 


---- User in DB ----
db-type: postgreSQL

> changed for 'gravatar' in 7.1.4.

name: "Example User",
email: "example@railstutorial.org",
password: "foobar",
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

name: "Example User",
email: "example@railstutorial.org",
password: "foobar",
password_confirmation: "foobar")

99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@railstutorial.org"
			password = "password"
			User.create!(name: name,
						 email: email,
						 password: password,
						 password_confirmation: password)
end

> turned the test db into sqlite
something I should've done earlier.
I set all as psotgresql but all the data stored in db was reset everytime I run rspec. I should've read the configuration file carefully

[config/database.yml]

# SQLite version 3.x
#   gem install sqlite3
#
#   Ensure the SQLite 3 gem is defined in your Gemfile
#   gem 'sqlite3'
development:
  adapter: postgresql
  encoding: unicode
  database: rails_development
  pool: 5
  username: nainirajk
  password:

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  adapter: sqlite3
  database: db/test.sqlite3
  pool: 5
  timeout: 5000

production:
  adapter: postgresql
  encoding: unicode
  database: rails_tutorial
  pool: 5
  username: nainirajk
  password:
