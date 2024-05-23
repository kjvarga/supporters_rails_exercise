# README

Supporters Rails Exercise is the basic setup needed for our live coding exercise. Be sure to have a working setup prior to the interview. 

## Basic info

* It's a Ruby (3.2.2) on Rails (6) app
* For the purpose of this test, it uses a sqlite database
* The app is running on port 3000
* The app will restart on code change

## Option 1 : Docker installation

If you have docker, simply use Makefile alias : 

* `make start` will setup and run the app
* `make test` will execute rspec tests

You can check it's working with `curl localhost:3000`

Alternatively you can use compose directly : 

* Build & run `docker-compose up`
* Run test `docker-compose run supporters bundle exec rspec`

To execute any command on the running container just do `docker-compose run supporters <command>`

**Your local code changes will be reflected automatically on the container.**

## Option 2 : Manual Installation 

### Dependencies and configuration

* Install Ruby 3.2.2, for example `rvm use 3.2.2`
* `bundle install`
* `bin/rails db:setup`

### Run

* `bin/rails s`

You can check it's working with `curl localhost:3000`


### Run Tests

* `bundle exec rspec`

